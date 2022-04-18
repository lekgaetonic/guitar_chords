import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/pages/home/appbar.dart';
import 'package:guitar_chords/pages/home/body.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';
import 'package:guitar_chords/shared/mainbottombar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference songs = FirebaseFirestore.instance.collection('songs');
    getData(songs);
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: const HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('testing').add(
            {
              'timestamp': Timestamp.fromDate(DateTime.now()),
            },
          );
          // Get.to(
          //   WysiwygPage(),
          // );
        },
        backgroundColor: const Color(0xFF202134),
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: MainBottomBar(),
    );
  }

  Future<void> getData(CollectionReference songs) async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await songs.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    print(allData);
  }
}
