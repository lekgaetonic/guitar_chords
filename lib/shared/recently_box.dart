import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';

class RecentlyBox extends StatelessWidget {
  final int _id;
  final String _imageUrl;
  final String _song;
  final String _artist;
  const RecentlyBox(this._id, this._imageUrl, this._song, this._artist,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8),
        //   color: Colors.white10,
        // ),
        width: 200,
        child: ListTile(
          onTap: (() => Get.to(LyricPage(_id))),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: _imageUrl,
              placeholder: (context, url) => Image.asset(
                'assets/images/watermark.png',
              ),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/watermark.png',
              ),
            ),
          ),
          title: Text(
            _song,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          subtitle: Text(
            _artist,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
