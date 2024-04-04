import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/updatepassword/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifyaccountPage extends StatelessWidget {
  const VerifyaccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child:Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: whiteColor,
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(
                    text: 'Verify\n'
                  ),
                  TextSpan(
                    text: 'Your Account'
                  ),
                ],
              ),
            ),
            const Text(
              'We just sent a six-digit code to your email address enter the code below to confirm your account',
              style: TextStyle(
                fontSize: 15,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'Activation code',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 25),
            VerificationCode(
              fullBorder: true,
              textStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: greenColor),
              keyboardType: TextInputType.number,
              underlineColor: pinkColor,
              length: 6,
              digitsOnly: true,
              isSecure: true,
              cursorColor:lightgreyColor,
              onCompleted: (String value) {},
              onEditing: (bool value) {},
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: size.width,
              height: size.height * .06,
              child: ElevatedButton(
                onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Updatepassword()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pinkColor,
                  textStyle: const TextStyle(
                    color: whiteColor,
                    fontSize: 10,
                    fontStyle: FontStyle.normal
                  ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Center(
                child: Text('Resend code now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: pinkColor,
                    
                  ),
                ),
              ),
            ),
            const Center(
              child: Text('Resend code in 00:59',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: lightgreyColor,
      
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
