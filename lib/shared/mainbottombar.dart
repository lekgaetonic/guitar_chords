import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/favorite/page.dart';
import 'package:guitar_chords/pages/home/page.dart';
import 'package:guitar_chords/pages/lyric/add/page.dart';
import 'package:iconsax/iconsax.dart';

class MainBottomBar extends StatelessWidget {
  MainBottomBar(
    this._selectedIndex, {
    Key? key,
  }) : super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: 'Feeds',
          activeIcon: Icon(Iconsax.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.heart),
          activeIcon: Icon(Iconsax.heart),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.add_square),
          activeIcon: Icon(Iconsax.add_square),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.activity),
          activeIcon: Icon(Iconsax.activity),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.user),
          activeIcon: Icon(Iconsax.user),
          label: 'Your',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pinkAccent,
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
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Get.to(const HomePage());
        break;
      case 1:
        Get.to(FavoritePage());
        break;
      case 2:
        Get.to(LyricAddPage());
        break;
      case 3:
        Get.to(FavoritePage());
        break;
      default:
        Get.to(const HomePage());
    }
  }
}
