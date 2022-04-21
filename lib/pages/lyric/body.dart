import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:flutter/services.dart';

class LyricBody extends StatelessWidget {
  final String _lyric;
  const LyricBody(this._lyric, {Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return SingleChildScrollView(
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: FutureBuilder(
  //         future: rootBundle.loadString('assets/html/s17.html'),
  //         builder: (BuildContext context, AsyncSnapshot snapshot) {
  //           if (snapshot.hasData) {
  //             return HtmlWidget(_lyric);
  //           } else {
  //             return const SizedBox.shrink();
  //           }
  //         },
  //       ),
  //     ),
  //   );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: HtmlWidget(_lyric),
      ),
    );
  }
}
