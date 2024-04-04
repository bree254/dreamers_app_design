import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [secondaryColor, primaryColor]
          )
        ),
        child: child,
      ),
    );
  }
}