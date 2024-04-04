import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';


class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? greenColor : greenColor.withOpacity(.4),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}