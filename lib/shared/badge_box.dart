import 'package:flutter/material.dart';

class BadgeBox extends StatelessWidget {
  final String _label;
  final bool selected;
  const BadgeBox(this._label, {this.selected = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
        child: Text(
          _label,
          style: TextStyle(
              color: selected ? const Color(0xFF161725) : Colors.white,
              fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          color: selected ? Colors.pinkAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: selected ? Colors.pink : Colors.white70),
        ),
      ),
    );
  }
}
