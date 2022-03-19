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
      backgroundColor: const Color(0xFF202134),
      appBar: AppBar(
          backgroundColor: const Color(0xFF161725),
          centerTitle: true,
          title: const Text(
            'Deedzify',
            style: TextStyle(
                fontFamily: 'PaletteMosaic',
                fontSize: 26,
                color: const Color(0xFF3CC890)),
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
                  // color: Colors.white10,
                  margin: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 4),
                  elevation: 3,
                  child: ListTile(
                    dense: true,
                    onTap: () => Get.to(const LyricPage()),
                    leading: Image.network(songs['songs'][index]['cover']),
                    title: Text(
                      songs['songs'][index]['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
                            Icon(AntIcons.star, size: 12, color: Colors.amber),
                            Icon(AntIcons.star, size: 12, color: Colors.amber),
                            Icon(AntIcons.star, size: 12, color: Colors.amber),
                            Icon(AntIcons.star_outline, size: 12),
                            Icon(AntIcons.star_outline, size: 12),
                            SizedBox(width: 4),
                            Text(
                              "(" + Random().nextInt(100).toString() + ")",
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(
                      AntIcons.right_outline,
                      size: 16,
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
          Get.to(WysiwygPage());
        },
        backgroundColor: Color(0xFFFECA57),
        child: const Icon(CupertinoIcons.add),
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
          selectedItemColor: Color(0xFF3CC890),
          unselectedItemColor: Colors.white70,
          backgroundColor: const Color(0xFF161725),
          onTap: _onItemTapped,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  var _selectedIndex = 0.obs;

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
