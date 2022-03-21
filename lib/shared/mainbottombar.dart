import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomBar extends StatelessWidget {
  MainBottomBar({Key? key}) : super(key: key);

  final _selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AntIcons.home_outline),
            label: 'Feeds',
            activeIcon: Icon(AntIcons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(AntIcons.heart_outline),
            activeIcon: Icon(AntIcons.heart),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(AntIcons.user),
            activeIcon: Icon(AntIcons.user),
            label: 'Your',
          ),
        ],
        currentIndex: _selectedIndex.value,
        selectedItemColor: const Color(0xFF3CC890),
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xFF161725),
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }
}
