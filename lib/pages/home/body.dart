import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';
import 'package:guitar_chords/shared/artist_box.dart';
import 'package:guitar_chords/shared/box_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoxHeader('Recently Songs'),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () => Get.to(LyricPage(16)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white10,
                      ),
                      width: 200,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://2.bp.blogspot.com/-LW7KeaR4HDk/VskagTvM9oI/AAAAAAAAGyg/upRURMDWXdI/s1600/%25E0%25B8%259E%25E0%25B8%2587%25E0%25B8%25A9%25E0%25B9%258C%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%2592%25E0%25B8%2599%25E0%25B9%258C%2B%25E0%25B8%25A7%25E0%25B8%258A%25E0%25B8%25B4%25E0%25B8%25A3%25E0%25B8%259A%25E0%25B8%25A3%25E0%25B8%25A3%25E0%25B8%2588%25E0%25B8%2587%2B%25E0%25B8%25AD%25E0%25B8%25B1%25E0%25B8%25A5%25E0%25B8%259A%25E0%25B8%25B1%25E0%25B9%2589%25E0%25B8%25A1%2B%25E0%25B8%259E%25E0%25B8%2587%25E0%25B8%25A9%25E0%25B9%258C%25E0%25B8%259E%25E0%25B8%25B1%25E0%25B8%2592%25E0%25B8%2599%25E0%25B9%258C%2B%25E0%25B8%25A0%25E0%25B8%25B2%25E0%25B8%2584%2B3%2B2535.jpg',
                            placeholder: (context, url) => Image.asset(
                              'assets/images/watermark.png',
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/images/watermark.png',
                            ),
                          ),
                          // Image.network(
                          //   'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          // ),
                        ),
                        title: const Text(
                          'ใจนักเลง',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: const Text(
                          'พงษ์พัฒน์',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(LyricPage(17)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                      ),
                      width: 200,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl:
                                'http://1.bp.blogspot.com/_JB0tU62ByLs/SjhD3xErGgI/AAAAAAAABWI/3un-XGhyQLM/w1200-h630-p-k-no-nu/1839_1224349879.jpg',
                            placeholder: (context, url) => Image.asset(
                              'assets/images/watermark.png',
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/images/watermark.png',
                            ),
                          ),
                          // Image.network(
                          //   'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          // ),
                        ),
                        title: const Text(
                          'ที่ว่าง',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        subtitle: const Text(
                          'Pause',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                        // Image.network(
                        //   'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                        // ),
                      ),
                      title: const Text(
                        'งมงาย',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Body Slam',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'รักแท้ดูแลไม้ได้',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Potato',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'ถามจันทร์',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        '25 Hours',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'เจ้าหญิงนิทรา',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Clash',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BoxHeader('Songs'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: readJson(),
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
          BoxHeader('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: readJson(),
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
          BoxHeader('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: readJson(),
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
          BoxHeader('Artists'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: readJson(),
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
          BoxHeader('Songs'),
          SizedBox(
            height: 110,
            child: FutureBuilder(
              future: readJson(),
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

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/artists.json');
  }
}
