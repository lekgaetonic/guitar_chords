import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/home/body.dart';
import 'package:guitar_chords/pages/wysiwyg/step1_page.dart';
import 'package:guitar_chords/shared/main_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: HomeBody(),
      bottomNavigationBar: const MainBottomBar(0),
    );
  }
}
