import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leadingWidth: 50,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Iconsax.arrow_left),
      ),
      backgroundColor: const Color(0xFF161725),
      // centerTitle: true,
      // elevation: 0,
      // titleSpacing: 4,
      title: TextFormField(
        // style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF202134),
          isDense: true,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          hintText: 'Search',
          hintStyle: (const TextStyle(
            color: Colors.white24,
          )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.black54, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.black54, width: 1),
          ),
        ),
      ),
      actions: [],
    );
  }
}
