import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/controllers/songs_controller.dart';
import 'package:guitar_chords/pages/wysiwyg/step2_body.dart';
import 'package:iconsax/iconsax.dart';

class WysiwygStep2Page extends StatelessWidget {
  WysiwygStep2Page({Key? key}) : super(key: key);
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
        title: const Text('Add Chord1'),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlutterSummernote(
          // height: 400,
          hint: "Your chord here...",
          key: _keyEditor,
          hasAttachment: false,
          showBottomToolbar: false,
          customToolbar: """
                    [
                      ['style', ['bold', 'clear']],
                      ['color', ['color']],
                      ['view',['codeview']]
                    ]
                  """,
          returnContent: (content) {
            print(content);
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 16, left: 16),
        child: ElevatedButton(
          onPressed: () async {
            final value = await _keyEditor.currentState?.getText();
            print(value);
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
