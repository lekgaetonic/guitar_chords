import 'package:flutter/material.dart';
import 'package:guitar_chords/pages/artist/body.dart';
import 'package:guitar_chords/pages/home/appbar.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: ArtistBody(),
    );
  }
}
