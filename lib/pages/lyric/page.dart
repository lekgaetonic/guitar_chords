import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class LyricPage extends StatelessWidget {
  const LyricPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readJson(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var songs = json.decode(snapshot.data);
          var song = songs["songs"][0];
          return Scaffold(
            backgroundColor: const Color(0xFF202134),
            appBar: AppBar(
              backgroundColor: const Color(0xFF161725),
              centerTitle: true,
              title: Column(
                children: [
                  Text(song["name"]),
                  Text(
                    song["artist"],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3CC890),
                    ),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: HtmlWidget(song["lyric"]),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
