
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const DrawerItem({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:80.0),
      leading: Icon(

        icon,
        color: whiteColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: whiteColor

      ),
      ),

      onTap: onTap,
    );
  }
}