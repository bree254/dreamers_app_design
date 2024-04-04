import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/login_controller.dart';
import 'package:dreamers_app_design/src/pages/forgot/index.dart';
import 'package:dreamers_app_design/src/pages/main/index.dart';
import 'package:dreamers_app_design/src/pages/register/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/textformfield_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child:
      SingleChildScrollView(
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
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              //   child: RichText(
              //     text: const TextSpan(
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         color: whiteColor,
              //         fontSize: 30.0,
              //       ),
              //       children: [
              //         TextSpan(
              //             text: 'Signin\n'
              //         ),
              //         TextSpan(
              //             text: 'To Your Account'
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InputField(
                        name: "Email",
                        obsecure: false,
                        keyboardType: TextInputType.emailAddress,
                        controller: _controller.emailcontroller.value,
                      ),
                      const SizedBox(height: 20),
                      Obx(() => InputField(
                        name: "Password",
                        obsecure: _controller.obsecureText.value,
                        keyboardType: TextInputType.text,
                        controller: _controller.emailcontroller.value,
                        suffixIcon: Icons.remove_red_eye,
                      )),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotpasswordPage()
                                )
                              );
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: pinkColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width,
                        height: size.height * .06,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(

                                  builder: (context) => MainPage()


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
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dont have an account?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage()
                                )
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: pinkColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),

    );
  }
}
