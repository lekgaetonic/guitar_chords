import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_chords/shared/topic_box.dart';

import 'recently_box.dart';

class RecentlySection extends StatelessWidget {
  const RecentlySection({Key? key}) : super(key: key);
  Future<String> loadSongs() async {
    return await rootBundle.loadString('assets/songs.json');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadSongs(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var songs = json.decode(snapshot.data);
          var songLength = (songs['songs'] as List).toList().length;
          if (songLength > 0) {
            return Column(
              children: [
                TopicBox('Recently Songs'),
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: songLength,
                  itemBuilder: (BuildContext context, int index) {
                    return RecentlyBox(
                      songs['songs'][index]['id'],
                      songs['songs'][index]['cover'],
                      songs['songs'][index]['name'],
                      songs['songs'][index]['artist'],
                    );
                  },
                ),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
