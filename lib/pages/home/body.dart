import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_chords/shared/artist_box.dart';
import 'package:guitar_chords/shared/topic_box.dart';
import 'package:guitar_chords/shared/recently_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  Future<String> loadSongs() async {
    return await rootBundle.loadString('assets/songs.json');
  }

  Future<String> loadArtists() async {
    return await rootBundle.loadString('assets/artists.json');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder(
            future: loadSongs(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                var songs = json.decode(snapshot.data);
                var songLength = (songs['songs'] as List).toList().length;
                if (songLength > 0) {
                  return Column(
                    children: [
                      TopicBox('Recently Songs', viewMore: false),
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
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
                      )
                    ],
                  );
                } else {
                  return const SizedBox.shrink();
                }
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          TopicBox('Songs'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: loadArtists(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var artists = json.decode(snapshot.data);
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artists["artists"].length,
                    itemBuilder: (context, index) {
                      return ArtistBox(artists["artists"][index]['cover'],
                          artists["artists"][index]['artist']);
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          TopicBox('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: loadArtists(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var artists = json.decode(snapshot.data);
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artists["artists"].length,
                    itemBuilder: (context, index) {
                      return ArtistBox(artists["artists"][index]['cover'],
                          artists["artists"][index]['artist']);
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          TopicBox('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: loadArtists(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var artists = json.decode(snapshot.data);
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artists["artists"].length,
                    itemBuilder: (context, index) {
                      return ArtistBox(artists["artists"][index]['cover'],
                          artists["artists"][index]['artist']);
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          TopicBox('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: loadArtists(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var artists = json.decode(snapshot.data);
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artists["artists"].length,
                    itemBuilder: (context, index) {
                      return ArtistBox(artists["artists"][index]['cover'],
                          artists["artists"][index]['artist']);
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          TopicBox('Songs'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: loadArtists(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  var artists = json.decode(snapshot.data);
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artists["artists"].length,
                    itemBuilder: (context, index) {
                      return ArtistBox(artists["artists"][index]['cover'],
                          artists["artists"][index]['artist']);
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
