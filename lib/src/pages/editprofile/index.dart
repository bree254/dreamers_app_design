import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/controllers/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);
  final EditProfileController _controller = Get.put(EditProfileController());

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: whiteColor,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              color: whiteColor,
            ),
            child: Center(
                child: Column(children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/images/boy.png'),
                    width: 300,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                  TextButton(
                      onPressed: (){},
                      child:  Text(
                          'Change Profile Photo',
                        style: TextStyle(
                          color: babypinkColor
                        ),
                      ),
                  ),

                  const SizedBox( height: 20),
                  TextFormField(
                    controller: _controller.namecontroller.value,
                    decoration :  InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        labelText:'Username',
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '*required*';
                      }
                      return null;
                    },
                  ),
                  const SizedBox( height: 20),
                  TextFormField(
                    controller: _controller.emailcontroller.value,
                    obscureText: isVisible,
                    decoration :  InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                        labelText:'Email',
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox( height: 20),
                  TextFormField(
                    controller: _controller.phonecontroller.value,
                    obscureText: isVisible,
                    decoration :  InputDecoration(
                        prefixIcon: Icon(Icons.call_outlined),
                        labelText:'Phone Number',
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox( height: 20),
                  TextFormField(
                    controller: _controller.phonecontroller.value,
                    obscureText: isVisible,
                    decoration :  InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint),
                        labelText:'Change Password',
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye),
                        ),

                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox( height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: whiteColor,
                          ),
                          child: Icon(  Icons.arrow_back_ios,
                            color: Colors.black,
                      ),
                        )
                        ),

                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: pinkColor
                          ),
                          child: const Text(
                            'Update',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ],
                  )



                ]
                )
            )
        )
    );
  }
}
