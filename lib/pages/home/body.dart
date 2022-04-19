import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_chords/controllers/songs_controller.dart';
import 'package:guitar_chords/models/artists_model.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/shared/artist_box.dart';
import 'package:guitar_chords/shared/topic_box.dart';
import 'package:guitar_chords/shared/recently_box.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  SongsController songController = SongsController();
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
          StreamBuilder(
            stream: songController.readSongs(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<SongsModel> songs = snapshot.data!;
                return Column(
                  children: [
                    TopicBox('Recently Songs', viewMore: false),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RecentlyBox(
                            songs[index].id!,
                            songs[index].cover!,
                            songs[index].name!,
                            songs[index].artist!,
                          );
                        },
                      ),
                    )
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          StreamBuilder(
            stream: songController.readArtists(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<ArtistsModel> artists = snapshot.data!;
                return Column(
                  children: [
                    TopicBox('Artists'),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: artists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ArtistBox(
                            artists[index].id!,
                            artists[index].cover!,
                            artists[index].artist!,
                          );
                        },
                      ),
                    )
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
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
                      return ArtistBox(
                          artists["artists"][index]['id'],
                          artists["artists"][index]['cover'],
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
                      return ArtistBox(
                          artists["artists"][index]['id'],
                          artists["artists"][index]['cover'],
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
                      return ArtistBox(
                          artists["artists"][index]['id'],
                          artists["artists"][index]['cover'],
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
                      return ArtistBox(
                          artists["artists"][index]['id'],
                          artists["artists"][index]['cover'],
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
                      return ArtistBox(
                          artists["artists"][index]['id'],
                          artists["artists"][index]['cover'],
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
