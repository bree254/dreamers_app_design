import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/login/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:flutter/material.dart';


class PasswordUpdated extends StatelessWidget {
  const PasswordUpdated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Background(
      child:Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/ok.png')
            ),
            const Text(
              'Password Updated',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              child: Text(
                'You have successfully updated your password',
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height * .06,
              child: ElevatedButton(
                onPressed:() {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => LoginPage()
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pinkColor,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.normal
                  ),
                ),
                child: const Text(
                  'PROCEED',
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
