import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/onboarding/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingPage())
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo.png')),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text(
                  'Dreamers Club Africa',
                  style: TextStyle(
                    fontSize: 20,
                    color: greenColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Humanitarian Responsibility Initiatives',
                  style: TextStyle(
                    fontSize: 17, color: whiteColor
                  ),
                ),
                Text(
                  '(HRI)',
                  style: TextStyle(
                    fontSize: 17, color: orangeColor
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}