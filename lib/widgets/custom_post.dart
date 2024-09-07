// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_app/constants/color.dart';
import 'package:flutter/material.dart';

import 'package:facebook_app/models/post.dart';
import 'package:facebook_app/widgets/custom_avatar.dart';

// ignore: must_be_immutable
class CustomPost extends StatelessWidget {
  Post post;
  CustomPost({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: customCircleAvatar(img: post.user.avatar, isOnline: true),
            title: Text(
              post.user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(post.createdAt ?? "now"),
                const SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.public,
                  color: AppColor.iconColorLight,
                  size: 14,
                )
              ],
            ),
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.more_horiz),
                Icon(Icons.close),
              ],
            ),
          ),
          // text
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                post.title ?? "",
              ),
            ),
          ),

          //image
          if (post.img != null) Image.asset(post.img!),
          const SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: const Icon(Icons.thumb_up, size: 15,)),
                const SizedBox(
                  width: 3,
                ),
                Text(post.likes.toString())
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.thumb_up_alt_outlined),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.comment),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.link),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.share),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
