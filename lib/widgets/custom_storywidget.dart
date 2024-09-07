// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:facebook_app/models/story.dart';

// ignore: must_be_immutable
class CustomStoryWidget extends StatelessWidget {
  Story story;
  int index;
  CustomStoryWidget({
    super.key,
    required this.story,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 140,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story.img), fit: BoxFit.cover),
          color: const Color.fromARGB(255, 89, 88, 88),
          borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 20,
                height: 20,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4)
                ),
                child:  Center(child: Text(index.toString()),),
              ),
              Text(story.user.name)
            ],
          ),
    );
  }
}
