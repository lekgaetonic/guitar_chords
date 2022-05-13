import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/controllers/songs_controller.dart';
import 'package:guitar_chords/pages/wysiwyg/step1_body.dart';
import 'package:guitar_chords/pages/wysiwyg/step2_page.dart';
import 'package:iconsax/iconsax.dart';

class WysiwygStep1Page extends StatelessWidget {
  WysiwygStep1Page({Key? key}) : super(key: key);
  final GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();
  SongsController songController = SongsController();
  TextEditingController artistController = TextEditingController();
  TextEditingController albumController = TextEditingController();
  TextEditingController coverController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF161725),
        centerTitle: true,
        title: const Text('Add Chord'),
        // actions: [
        //   IconButton(
        //     onPressed: () async {
        //       final value = await _keyEditor.currentState?.getText();
        //       print(value);
        //     },
        //     icon: const Icon(
        //       Icons.save_outlined,
        //       color: Colors.white,
        //       size: 32,
        //     ),
        //   )
        // ],
      ),
      body: Wysiwyg1Body(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 16, left: 16),
        child: ElevatedButton(
          onPressed: () {
            Get.to(WysiwygStep2Page());
          },
          child: const Text(
            'Next',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
