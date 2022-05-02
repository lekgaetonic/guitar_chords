import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chords/controllers/songs_controller.dart';
import 'package:guitar_chords/models/artists_model.dart';
import 'package:guitar_chords/models/genres_model.dart';
import 'package:guitar_chords/models/songs_model.dart';
import 'package:guitar_chords/shared/artist_box.dart';
import 'package:guitar_chords/shared/badge_box.dart';
import 'package:guitar_chords/shared/topic_box.dart';
import 'package:guitar_chords/shared/recently_box.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  SongsController songController = SongsController();

  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlCVLpaIJJ6FXDTEWpYbF3TkSDZhrqOM1jtQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Hgtrk3CAccvDy3QXNnRqS0QSocR8m6kEQg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6N3l8qh3Iu66Iq8un2q7TXWRmbkca3dyjw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjq6PM6pF3LiWXfj8x1vC07kladR1hY8uQLA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVNVIYZar5uz8p-wVd-kDZnvw_ZRVQBsEZPw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJJQgd9oU3ZrbDAjgJ9jlKDPmoIzz4rl1ZaA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2U1G9OyNRfTuP67ylU-ml6P_JYLQ5c6TJMw&usqp=CAU',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(item),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          StreamBuilder(
            stream: songController.readGenres(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<GenresModel> genres = snapshot.data!;
                return Column(
                  children: [
                    TopicBox('Genres', viewMore: false),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: genres.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BadgeBox(
                            genres[index].name!,
                            selected: index == 0,
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          StreamBuilder(
            stream: songController.readSongs(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<SongsModel> songs = snapshot.data!;
                return Column(
                  children: [
                    TopicBox('Recently Songs', viewMore: false),
                    SizedBox(
                      height: 72,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RecentlyBox(songs[index]);
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
        ],
      ),
    );
  }
}
