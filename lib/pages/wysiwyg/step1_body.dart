import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/wysiwyg/step2_page.dart';

class Wysiwyg1Body extends StatelessWidget {
  Wysiwyg1Body({Key? key}) : super(key: key);

  TextEditingController artistController = TextEditingController();
  TextEditingController albumController = TextEditingController();
  TextEditingController coverController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: artistController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
                hintText: 'Artist',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: albumController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
                hintText: 'Album',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: coverController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
                hintText: 'Cover',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
          )
        ],
      ),
    );
  }
}
