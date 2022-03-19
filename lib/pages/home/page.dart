import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/lyric/page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xFF202134),
        appBar: AppBar(
          backgroundColor: const Color(0xFF161725),
          centerTitle: true,
          title: const Text('Strumped'),
        ),
        body: FutureBuilder(
          future: readJson(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              var songs = json.decode(snapshot.data);
              var songLength = (songs['songs'] as List).toList().length;
              return ListView.builder(
                itemCount: songLength,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () => Get.to(const LyricPage()),
                    leading: const Icon(Icons.list),
                    title: Text(
                      songs['songs'][index]['name'],
                    ),
                    subtitle: Text(
                      songs['songs'][index]['artist'],
                      style: const TextStyle(color: Colors.green, fontSize: 15),
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
        ));
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
