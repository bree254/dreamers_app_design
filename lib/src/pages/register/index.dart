import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/register_controller.dart';
import 'package:dreamers_app_design/src/pages/login/index.dart';
import 'package:dreamers_app_design/src/pages/setpassword/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/textformfield_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final RegisterController _controller =Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Background(
      child: 
      SingleChildScrollView(
        child: Column(
            children:  [
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
                                  text: 'Signup\n'
                              ),
                              TextSpan(
                                  text: 'For An Account'
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ),

                ],
              ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            //   child: RichText(
            //     text: const TextSpan(
            //       style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         color: whiteColor,
            //         fontSize: 30.0,
            //       ),
            //       children: [
            //         TextSpan(
            //             text: 'Signup\n'
            //         ),
            //         TextSpan(
            //             text: 'For An Account'
            //         ),
            //       ],
            //     ),
            //   ),
            //
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    InputField(
                      name: "Fullname",
                      obsecure: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: _controller.emailcontroller.value,
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      name: "Email",
                      obsecure: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: _controller.emailcontroller.value,
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      name: "Phone",
                      obsecure: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: _controller.emailcontroller.value,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                child: SizedBox(
                  width: size.width,
                  height: size.height * .06,
                  child: ElevatedButton(
                    onPressed:() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SetpasswordPage()
                      )
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: pinkColor,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.normal
                      ),
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                        fontSize: 15,
                      ),
                    ),),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already Have an Account ?',
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage()
                        )
                      ),
                      child: const Text('Login',
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
          ),
      ),

    );
  }
}