import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/controllers/songs_controller.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/pages/lyric/page.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'dart:math';
import 'package:ant_icons/ant_icons.dart';

class FavoriteBody extends StatelessWidget {
  FavoriteBody({Key? key}) : super(key: key);
  SongsController songController = SongsController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: songController.readSongs(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<SongsModel> songs = snapshot.data!;

          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (() => Get.to(LyricPage(songs[index]))),
                child: Card(
                  color: const Color(0xFF161725),
                  margin: const EdgeInsets.only(
                      left: 8, top: 8, right: 8, bottom: 0),
                  elevation: 3,
                  child: ListTile(
                    dense: true,
                    onTap: null,
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(3.0),
                        child: Image.network(songs[index].cover!)),
                    title: Text(
                      songs[index].name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          songs[index].artist!,
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(5, (loop) {
                                if (loop < songs[index].rating!) {
                                  return const Icon(
                                    AntIcons.star,
                                    size: 12,
                                    color: Colors.amber,
                                  );
                                } else {
                                  return const Icon(
                                    AntIcons.star_outline,
                                    size: 12,
                                    color: Colors.amber,
                                  );
                                }
                              }),
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
