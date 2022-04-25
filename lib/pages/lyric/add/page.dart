import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/search/body.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';
import 'package:guitar_chords/shared/mainbottombar.dart';

class LyricAddPage extends StatelessWidget {
  LyricAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: const SearchBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            WysiwygPage(),
          );
        },
        backgroundColor: const Color(0xFF202134),
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: MainBottomBar(2),
    );
  }
}
