import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/home/page.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chord kub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sukhumvit',
      ),
      home: HomePage(),
    );
  }
}