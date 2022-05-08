import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WysiwygPage extends StatelessWidget {
  WysiwygPage({Key? key}) : super(key: key);
  final GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();
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
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: OutlineInputBorder(),
                        hintText: 'Artist',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: OutlineInputBorder(),
                        hintText: 'Album',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: OutlineInputBorder(),
                        hintText: 'Cover',
                      ),
                    ),
                  ),
                  Padding(
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
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              // left: 30.0,
              bottom: 0.0,
              child: Container(
                width: Get.width,
                height: 56.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF20FFFF),
                ),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text('data'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
