import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/login_controller.dart';
import 'package:dreamers_app_design/src/pages/verification/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/textformfield_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class ForgotpasswordPage extends StatelessWidget {
  ForgotpasswordPage({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    top: 0,
                    right: 0,
                    height: 255,
                    child: Image(
                      image: AssetImage('assets/images/login_ellipse_2.png'),
                    )
                ),
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login_ellipse_1.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                  child: Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                            fontSize: 30.0,
                          ),
                          children: [
                            TextSpan(
                                text: 'Signin\n'
                            ),
                            TextSpan(
                                text: 'To Your Account'
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    top: 0,
                    bottom: 180,
                    child: Image(
                      image: AssetImage('assets/images/login_ellipse_3.png'),
                    )
                ),

              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                    fontSize: 30.0,
                  ),
                  children: [
                    TextSpan(
                        text: 'Forgot\n'
                    ),
                    TextSpan(
                        text: 'Your Password?'
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: const Text(
                "Enter your e-mail address and we’ll send you a link to reset your password.",
                style: TextStyle(
                  fontSize: 15,
                  color: whiteColor,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Form(
                key: formkey,
                child: InputField(
                    name: "Email",
                    obsecure: false,
                    controller: _controller.emailcontroller.value,
                    keyboardType: TextInputType.emailAddress),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: SizedBox(
                width: size.width,
                height: size.height * .06,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyaccountPage()));
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
                    'NEXT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      fontSize: 15,
                    ),
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
