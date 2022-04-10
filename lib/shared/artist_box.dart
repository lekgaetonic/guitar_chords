import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArtistBox extends StatelessWidget {
  late String _cover;
  late String _artist;
  ArtistBox(String cover, String artist, {Key? key}) : super(key: key) {
    _cover = cover;
    _artist = artist;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white10,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: _cover,
                  placeholder: (context, url) => Image.asset(
                    'assets/images/watermark.png',
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/images/watermark.png',
                  ),
                ),
              ),
            ),
            Text(
              _artist,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
