import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/search/body.dart';
import 'package:guitar_chords/pages/wysiwyg/step1_page.dart';
import 'package:guitar_chords/shared/main_bottom_bar.dart';

class LyricAddPage extends StatelessWidget {
  const LyricAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: SearchBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            WysiwygStep1Page(),
          );
        },
        backgroundColor: const Color(0xFF202134),
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: const MainBottomBar(2),
    );
  }
}
