import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/pages/lyric/page.dart';

class RecentlyBox extends StatelessWidget {
  // final int _id;
  // final String _imageUrl;
  // final String _song;
  // final String _artist;
  final SongsModel _song;
  const RecentlyBox(this._song, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      width: 200,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        tileColor: Colors.white10,
        onTap: (() => Get.to(LyricPage(_song))),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: _song.cover!,
            placeholder: (context, url) => Image.asset(
              'assets/images/watermark.png',
            ),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/watermark.png',
            ),
          ),
        ),
        title: Text(
          _song.name!,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Text(
          _song.artist!,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
