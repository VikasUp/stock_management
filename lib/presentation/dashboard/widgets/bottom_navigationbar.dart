import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/menu.png',
              width: 30,
              height: 30,
            ),
            label: 'Home',
            backgroundColor: Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 30,
              height: 30,
            ),
            label: 'Profile',
            backgroundColor: Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/pick.png',
              width: 30,
              height: 30,
            ),
            label: 'Pick',
            backgroundColor: Color(0xFF006064),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/history.png',
              width: 30,
              height: 30,
            ),
            label: 'History',
            backgroundColor: Color(0xFF006064),
          )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 248, 249, 249),
        onTap: onTabTapped,
      ),
    );
  }
}
