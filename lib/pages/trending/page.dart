import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/search/appbar.dart';
import 'package:guitar_chords/pages/search/body.dart';
import 'package:guitar_chords/pages/trending/body.dart';
import 'package:guitar_chords/pages/wysiwyg/step1_page.dart';
import 'package:guitar_chords/shared/main_bottom_bar.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF202134),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: SearchAppBar(),
      ),
      body: TrendingBody(),
      bottomNavigationBar: MainBottomBar(3),
    );
  }
}
