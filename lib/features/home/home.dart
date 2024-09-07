import 'package:facebook_app/constants/data.dart';
import 'package:facebook_app/widgets/custom_avatar.dart';
import 'package:facebook_app/widgets/custom_post.dart';
import 'package:facebook_app/widgets/custom_storywidget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              padding: const EdgeInsets.all(10),
              color: Colors.grey.withOpacity(0.3),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  customCircleAvatar(img: usersList[0].avatar, isOnline: true),
                  const SizedBox(
                    width: 3,
                  ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                        "What's is in your mind?",
                        style: TextStyle(fontSize: 18),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                      Text("photo")
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 89, 88, 88),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            height: 70,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 43, 43, 43),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                )),
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 0.0,
                            left: 0.0,
                            child: Container(
                              // margin: EdgeInsets.only(top: 20),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 218, 215, 215),
                              ),
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 5, 54, 250),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text('Create Story'),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(
                    width: 3,
                  ),
                  // stories
                  CustomStoryWidget(story: storyList[0], index: 1),
                  const SizedBox(
                    width: 3,
                  ),
                  CustomStoryWidget(story: storyList[1], index: 2),
                  const SizedBox(
                    width: 3,
                  ),
                  CustomStoryWidget(story: storyList[2], index: 3),
                  const SizedBox(
                    width: 3,
                  ),
                  CustomStoryWidget(story: storyList[3], index: 4),
                ],
              ),
            ),
           const SizedBox(height: 15,),
           ListView.builder(
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
