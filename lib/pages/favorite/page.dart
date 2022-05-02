import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/favorite/appbar.dart';
import 'package:guitar_chords/pages/favorite/body.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';
import 'package:guitar_chords/shared/mainbottombar.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 42, 66),
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: HomeAppBar(),
        ),
        body: FavoriteBody(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Get.to(WysiwygPage());
        //   },
        //   backgroundColor: Colors.amber,
        //   child: const Icon(
        //     CupertinoIcons.add,
        //   ),
        // ),
        bottomNavigationBar: MainBottomBar(1));
  }
}
