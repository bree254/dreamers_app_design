import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/login_controller.dart';
import 'package:dreamers_app_design/src/pages/login/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/textformfield_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class SetpasswordPage extends StatelessWidget {
  SetpasswordPage({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const Positioned(
                      top: 0,
                      right: 0,
                      height: 180,
                      child: Image(
                        image: AssetImage('assets/images/register_ellipse_4.png'),
                      )
                  ),
                  const Positioned(
                      right: 0,
                      top: 0,
                      height: 160,
                      child: Image(
                        image: AssetImage('assets/images/register_ellipse_3.png'),
                      )
                  ),
                  Container(
                    height: 240,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/register_ellipse_1.png'),
                          fit: BoxFit.fill
                      ),
                    ),
                    child: Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                              fontSize: 30.0,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Set\n'
                              ),
                              TextSpan(
                                  text: 'Your Password'
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ),

                ],
              ),
              SizedBox(height: 50,),
              Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
              child: const Text(
                'Set your new password. It should be at least eight characters long.',
                style: TextStyle(
                  fontSize: 15,
                  color: whiteColor,
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
              child: Form(
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
                  )),
            ),
            const SizedBox(height: 25),
      Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
              child:SizedBox(
                width: size.width,
                height: size.height * .06,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()
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
                    'CONTINUE',
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