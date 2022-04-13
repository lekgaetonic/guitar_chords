import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chords/pages/lyric/body.dart';
import 'package:iconsax/iconsax.dart';

class LyricPage extends StatelessWidget {
  final int _id;
  const LyricPage(this._id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadLyric(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var songs = json.decode(snapshot.data);
          var song = songs["songs"][_id];
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
              actions: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(Iconsax.edit),
                )
              ],
            ),
            body: const LyricBody(),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<String> loadLyric() async {
    return await rootBundle.loadString('assets/lyrics.json');
  }
}
