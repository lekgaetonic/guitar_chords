import 'package:flutter/material.dart';
import 'package:guitar_chords/const/colors.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
