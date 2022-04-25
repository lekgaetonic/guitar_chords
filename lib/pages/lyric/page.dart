import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chords/const/colors.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/pages/lyric/body.dart';
import 'package:iconsax/iconsax.dart';

class LyricPage extends StatelessWidget {
  final SongsModel _song;
  const LyricPage(this._song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bodyBackground,
      appBar: AppBar(
        backgroundColor: ConstColors.appbarBackground,
        centerTitle: true,
        title: Column(
          children: [
            Text(_song.name!),
            Text(
              _song.artist!,
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
      body: LyricBody(_song.lyric!),
    );
  }

  Future<String> loadLyric() async {
    return await rootBundle.loadString('assets/lyrics.json');
  }
}
