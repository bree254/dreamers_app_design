import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';


class OnboardingContent extends StatelessWidget {
  final String image, title, description;

  const OnboardingContent({
    super.key, required this.image, required this.title, required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 240,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: greenColor,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            color: whiteColor
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}