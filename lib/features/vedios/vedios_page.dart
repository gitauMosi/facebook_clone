import 'package:facebook_app/constants/data.dart';
import 'package:facebook_app/widgets/custom_post.dart';
import 'package:flutter/material.dart';

class VediosPage extends StatelessWidget {
  const VediosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Chip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide.none),
                      label: const Text("Suggestions")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Chip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide.none),
                      label: const Text("Your friends")),
                ),
              ],
            ),
             const SizedBox(height: 15,),
           ListView.builder(
            reverse: true,
            itemCount: postList.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return CustomPost(post: postList[index]);
            }),
            const SizedBox(
              height: 200,
              child: Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
    );
  }
}
