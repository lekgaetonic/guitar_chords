import 'dart:convert';
import 'dart:math';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';
import 'package:guitar_chords/pages/wysiwyg/page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 42, 66),
      appBar: AppBar(
          backgroundColor: const Color(0xFF161725),
          centerTitle: true,
          title: const Text(
            'Deedzify',
            style: TextStyle(
              fontFamily: 'PaletteMosaic',
              fontSize: 26,
              color: Color(0xFF3CC890),
            ),
          )),
      body: FutureBuilder(
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
                  margin: const EdgeInsets.only(
                      left: 8, top: 8, right: 8, bottom: 0),
                  elevation: 3,
                  child: ListTile(
                    dense: true,
                    onTap: () => Get.to(const LyricPage()),
                    leading: Image.network(songs['songs'][index]['cover']),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const WysiwygPage());
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          CupertinoIcons.add,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(AntIcons.home_outline),
              label: 'Feeds',
              activeIcon: Icon(AntIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(AntIcons.heart_outline),
              activeIcon: Icon(AntIcons.heart),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(AntIcons.user),
              activeIcon: Icon(AntIcons.user),
              label: 'Your',
            ),
          ],
          currentIndex: _selectedIndex.value,
          selectedItemColor: const Color(0xFF3CC890),
          unselectedItemColor: Colors.white70,
          backgroundColor: const Color(0xFF161725),
          onTap: _onItemTapped,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  final _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
