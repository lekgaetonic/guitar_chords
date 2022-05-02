import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/const/colors.dart';
import 'package:guitar_chords/pages/artist/page.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(const ArtistPage());
      },
      child: Text(
        'See all',
        style: TextStyle(
          fontSize: 14,
          color: ConstColors.primary,
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
