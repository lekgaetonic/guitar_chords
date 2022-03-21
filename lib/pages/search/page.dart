import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/home/body.dart';
import 'package:guitar_chords/pages/search/appbar.dart';
import 'package:guitar_chords/pages/search/body.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 42, 66),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: SearchAppBar(),
      ),
      body: const SearchBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const WysiwygPage());
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: Obx(
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
      ),
    );
  }

  final _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }
}
