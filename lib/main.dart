import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:html/parser.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'คอร์ดกีต้า',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sukhumvit',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readJson(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var datas = json.decode(snapshot.data);
          var data = datas["songs"][0];
          return Scaffold(
            backgroundColor: const Color(0xFF202134),
            appBar: AppBar(
              backgroundColor: const Color(0xFF161725),
              centerTitle: true,
              title: Column(
                children: [
                  Text(data["name"]),
                  Text(
                    data["artist"],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3CC890),
                    ),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        introText('Intro : '),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.from(data["intro"])
                              .map(
                                (e) => introText(e),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.from(data["lyric"])
                            .map(
                              (e) => lyricText(parseFragment(e).outerHtml),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget chordText(
    String chord, {
    Color color = const Color(0xFF3CD598),
  }) {
    return Text(
      chord,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Widget lyricText(
    String chord, {
    Color color = const Color(0xFFDDDDDD),
    Color highlight = Colors.transparent,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        chord,
        style: TextStyle(
            fontSize: 16,
            fontWeight: fontWeight,
            color: color,
            backgroundColor: highlight),
      ),
    );
  }

  Widget strumText(
    String chord, {
    Color color = const Color(0xFFFFFFFF),
    Color highlight = Colors.transparent,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      chord,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        backgroundColor: highlight,
        decoration: TextDecoration.underline,
      ),
    );
  }

  Widget introText(
    String chord, {
    Color color = const Color(0xFFFECA57),
    Color highlight = Colors.transparent,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      chord,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
