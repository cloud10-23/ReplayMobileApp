import 'package:flutter/material.dart';

import '../../utils/colours.dart';
import '../activity/activity_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../trainings/trainings_screen.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {

  int _selectedIndex = 0;

  List<Widget> widgetOptions = const [
    HomeScreen(),
    TrainingsScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.gradient2,
        unselectedItemColor: AppColor.mildGreyColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.model_training),
              activeIcon: Icon(Icons.model_training),
              label: "Trainings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.radar_rounded),
              activeIcon: Icon(Icons.radar),
              label: "Activity"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              activeIcon: Icon(Icons.person),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
