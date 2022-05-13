import 'package:flutter/material.dart';
import 'package:flutter_summernote/flutter_summernote.dart';

class Wysiwyg2Body extends StatelessWidget {
  Wysiwyg2Body({Key? key}) : super(key: key);
  final GlobalKey<FlutterSummernoteState> _keyEditor = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
              returnContent: (content) {
                print(content);
              },
            ),
          )
        ],
      ),
    );
  }
}
