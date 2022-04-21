import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:math';
import 'package:ant_icons/ant_icons.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readJson(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var songs = json.decode(snapshot.data);
          var songLength = (songs['songs'] as List).toList().length;
          return ListView.builder(
            itemCount: songLength,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: const Color(0xFF161725),
                margin:
                    const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 0),
                elevation: 3,
                child: ListTile(
                  dense: true,
                  onTap: null,
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.network(songs['songs'][index]['cover'])),
                  title: Text(
                    songs['songs'][index]['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songs['songs'][index]['artist'],
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            AntIcons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const Icon(
                            AntIcons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const Icon(
                            AntIcons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const Icon(
                            AntIcons.star_outline,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const Icon(
                            AntIcons.star_outline,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "(" + Random().nextInt(100).toString() + ")",
                            style: const TextStyle(
                              color: Colors.white70,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  trailing: const Icon(
                    AntIcons.right_outline,
                    size: 16,
                    color: Colors.white70,
                  ),
                ),
              );
            },
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
