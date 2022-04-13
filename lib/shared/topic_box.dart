import 'package:flutter/material.dart';
import 'package:guitar_chords/shared/see_all.dart';

class TopicBox extends StatelessWidget {
  late String topicText;
  late bool viewMore;
  TopicBox(this.topicText, {this.viewMore = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              topicText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          viewMore ? const SeeAll() : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
