
import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

import 'drawer_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Drawer(
            width: size.width,
            backgroundColor: secondaryColor,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const Image(image: AssetImage('assets/images/man.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'MICHAEL B JORDAN',
                      style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'mbjordan@gmail.com',
                      style: TextStyle(
                        color: lightgreyColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 40),
                    GestureDetector(
                      child: const Text(
                        'About Us',
                        style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      color: lightgreyColor,
                      thickness: 0.25,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Message Us',
                        style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      color: lightgreyColor,
                      thickness: 0.25,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Upcoming Events',
                        style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      color: lightgreyColor,
                      thickness: 0.25,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Booked Events',
                        style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      color: lightgreyColor,
                      thickness: 0.25,
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.center,
                      child: DrawerItem(
                        title: 'Settings',
                        icon: Icons.settings_outlined,
                        onTap: () {},
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: DrawerItem(
                        title: 'Logout',
                        icon: Icons.logout_outlined,
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          // Add an "X" icon higher in the top-right corner
          Align(
            alignment: Alignment(1.0, -0.9), // Adjust this alignment
            child: GestureDetector(
              onTap: () {
                // Navigate back to the previous page (e.g., the home page)
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.close, // You can change this to your "X" icon
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
