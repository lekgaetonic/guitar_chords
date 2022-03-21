import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:math';
import 'package:ant_icons/ant_icons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Page',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
