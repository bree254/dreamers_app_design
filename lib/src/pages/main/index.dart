import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/pages/chats/index.dart';
import 'package:dreamers_app_design/src/pages/events/index.dart';
import 'package:dreamers_app_design/src/pages/home/index.dart';
import 'package:dreamers_app_design/src/pages/profile/index.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> pages =  [
    HomePage(),
    // InitiativePage(),
    EventsPage(),
    ChatPage(),
    ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedItemColor: pinkColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_rounded,
              size: 28,
            )
          ),
          BottomNavigationBarItem(
            label: 'Events',
            icon: Icon(Icons.calendar_month)
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat_bubble_outline_rounded)
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person)
          )
        ],
      ),
    );
  }
}