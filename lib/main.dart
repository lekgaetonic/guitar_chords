import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202134),
      appBar: AppBar(
        backgroundColor: const Color(0xFF161725),
        centerTitle: true,
        title: Column(
          children: const [
            Text('ภาษากาย'),
            Text(
              'Potato',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3CC890),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  introText('Intro : / C / C / Am / Am /'),
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      introText('/ C / C / Am / Am /'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  chordText('C'),
                  const SizedBox(
                    width: 120,
                  ),
                  chordText('Am'),
                ],
              ),
              Row(
                children: [
                  lyricText('ยอมให้'),
                  strumText('ไป'),
                  lyricText('แล้ว เมื่อหัวใจเธออยู่ที่'),
                  strumText('ตรง'),
                  lyricText('นั้น'),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
                  chordText('Dm'),
                  const SizedBox(
                    width: 30,
                  ),
                  chordText('G'),
                  const SizedBox(
                    width: 40,
                  ),
                  chordText('Dm'),
                  const SizedBox(
                    width: 10,
                  ),
                  chordText('G'),
                ],
              ),
              Row(
                children: [
                  lyricText('เมื่อฉันไม่ใช่คนที่'),
                  strumText('เธอ'),
                  lyricText('ฝัน ใน'),
                  strumText('ใจ'),
                  lyricText('ตามมัน'),
                  strumText('ไป'),
                  lyricText('หัว'),
                  strumText('ใจ'),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  chordText('C'),
                  const SizedBox(
                    width: 130,
                  ),
                  chordText('Am'),
                ],
              ),
              Row(
                children: [
                  lyricText('ก่อนจะ'),
                  strumText('โดน'),
                  lyricText('ทิ้ง อยากใช้เวลาส่วนที่'),
                  strumText('ยัง'),
                  lyricText('เหลือ'),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 100,
                  ),
                  chordText('Dm'),
                  const SizedBox(
                    width: 40,
                  ),
                  chordText('G'),
                  const SizedBox(
                    width: 30,
                  ),
                  chordText('Dm'),
                  const SizedBox(
                    width: 10,
                  ),
                  chordText('G'),
                ],
              ),
              Row(
                children: [
                  lyricText('เพื่อร่ำลาเธอคนที่'),
                  strumText('เคย'),
                  lyricText('คบ กัน'),
                  strumText('มา'),
                  lyricText('ขอเว'),
                  strumText('ลา'),
                  lyricText('ไม่'),
                  strumText('นาน'),
                ],
              )
            ],
          ),
        ),
      ),
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
    return Text(
      chord,
      style: TextStyle(
          fontWeight: fontWeight, color: color, backgroundColor: highlight),
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

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/songs.json');
    final data = await json.decode(response);
  }
}
