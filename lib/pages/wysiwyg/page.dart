import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';
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
        actions: [
          IconButton(
            onPressed: () async {
              final value = await _keyEditor.currentState?.getText();
              print(value);
            },
            icon: const Icon(
              Iconsax.save_add,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(),
                  hintText: 'Artist',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(),
                  hintText: 'Album',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
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
                hint: "Your chord here...",
                key: _keyEditor,
                hasAttachment: false,
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
    );
  }
}
