import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/login_controller.dart';
import 'package:dreamers_app_design/src/pages/success/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/textformfield_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class Updatepassword extends StatelessWidget {
  Updatepassword({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: whiteColor,
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(
                    text: 'Reset\n'
                  ),
                  TextSpan(
                    text: 'Your New Password'
                  ),
                ],
              ),
            ),
            const Text(
              'Set your new password. It should be at least eight characters long.',
              style: TextStyle(
                fontSize: 15,
                color: whiteColor,
              ),
            ),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => InputField(
                    name: "Password",
                    obsecure: _controller.obsecureText.value,
                    keyboardType: TextInputType.text,
                    controller: _controller.emailcontroller.value,
                    suffixIcon: Icons.remove_red_eye,
                  )),
                  const SizedBox(height: 20),
                  Obx(() => InputField(
                    name: "Confirm Password",
                    obsecure: _controller.obsecureText.value,
                    keyboardType: TextInputType.text,
                    controller: _controller.emailcontroller.value,
                  )),
                ],
              )
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: size.width,
              height: size.height * .06,
              child: ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordUpdated()
                      )
                    );
                    print('Form validated');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pinkColor,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                child: const Text(
                  'UPDATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
