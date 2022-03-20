import 'package:flutter/material.dart';

class WysiwygPage extends StatelessWidget {
  const WysiwygPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF161725),
          centerTitle: true,
          title: const Text('Add new chord'),
        ),
        body: Container());
  }
}
