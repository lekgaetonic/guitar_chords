import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Text(
        'See all',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white70,
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
