
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/editprofile/index.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading:IconButton(
          onPressed: () => Navigator.pop(context),
            icon: Icon(
                Icons.arrow_back_ios,
              color: Colors.black,
            ),
        ),
        title: Text(
            'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),
      body:Container(
          padding: EdgeInsets.all(30),
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              color: whiteColor,
          ),
          child:
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                        image: AssetImage('assets/images/boy.png'),
                        width: 300,
                      height: 100,
                    ),

                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                      },
                      child: Text(
                          'Edit Profile',
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: pinkColor,
                      shape: StadiumBorder(),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Divider(),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(Icons.person_outline_outlined,color: pinkColor),
                  title:Text('Michael B Jordan'),

                ),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(
                      Icons.mail_outline_outlined,
                      color: pinkColor,
                  ),
                  title:Text('mbjordan@gmail.com'),

                ),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(
                      Icons.phone_enabled_outlined,
                     color: pinkColor,
                  ),
                  title:Text('+25478999346'),

                ),

              ],
            ),
          ),
        ),

    );
  }
}