import 'package:flutter/material.dart';
import 'package:guitar_chords/const/colors.dart';

class FavoriteAppBar extends StatelessWidget {
  const FavoriteAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstColors.bodyBackground,
      // centerTitle: true,
      title: TextFormField(
        // style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 40, 42, 66),
          isDense: true,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          hintText: 'Search',
          hintStyle: (const TextStyle(
            color: Colors.white30,
          )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: ConstColors.bodyBackground, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: ConstColors.bodyBackground, width: 1),
          ),
        ),
      ),
      actions: [],
    );
  }
}
