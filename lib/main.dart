import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_chords/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );
  runApp(const App());
}


