import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guitar_chords/pages/search/page.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Deedzify',
        style: TextStyle(
          fontFamily: 'PaletteMosaic',
          fontSize: 26,
          // color: Color(0xFFE81E62),
          color: Colors.pinkAccent,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {
            Get.to(
              SearchPage(),
            )
          },
          icon: const Icon(
            Iconsax.search_normal_1,
            color: Colors.black54,
          ),
        )
      ],
    );
  }
}
