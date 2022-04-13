import 'package:flutter/material.dart';
import 'package:guitar_chords/shared/see_all.dart';

class BoxHeader extends StatelessWidget {
  late String _header;
  BoxHeader(String header, {Key? key}) : super(key: key) {
    _header = header;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              _header,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SeeAll(),
        ],
      ),
    );
  }
}
