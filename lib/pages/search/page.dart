import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/favorite/page.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/home/body.dart';
import 'package:guitar_chords/pages/search/appbar.dart';
import 'package:guitar_chords/pages/search/body.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';
import 'package:guitar_chords/shared/mainbottombar.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: SearchAppBar(),
      ),
      body: const SearchBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(WysiwygPage());
        },
        backgroundColor: Colors.pinkAccent,
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: MainBottomBar(),
    );
  }

  final _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
    Get.to(FavoritePage());
  }
}
