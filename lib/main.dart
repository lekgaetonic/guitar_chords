import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:html/parser.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'pages/home/page.dart';

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
    return GetMaterialApp(
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
