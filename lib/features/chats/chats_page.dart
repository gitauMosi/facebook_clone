import 'package:facebook_app/constants/color.dart';
import 'package:facebook_app/constants/data.dart';
import 'package:facebook_app/models/user.dart';
import 'package:facebook_app/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                SizedBox(
                  child: Row(
                    
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Icon(
                                Icons.settings,
                                color: AppColor.iconColorLight,
                              )),
                        ),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: Icon(
                                Icons.search,
                                color: AppColor.iconColorLight,
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    customChatFriends(usersList[0]),
                    customChatFriends(usersList[1]),
                    customChatFriends(usersList[2]),
                    customChatFriends(usersList[3]),
                    customChatFriends(usersList[0]),
                    customChatFriends(usersList[1]),
                    customChatFriends(usersList[2]),
                    customChatFriends(usersList[3]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  customChats(usersList[3]),
                  customChats(usersList[1]),
                  customChats(usersList[0]),
                  customChats(usersList[2]),
                  customChats(usersList[4]),
                  customChats(usersList[2]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget customChats(User user){
    return ListTile(
      leading: customCircleAvatar(img: user.avatar, isOnline: false),
      title:  Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold),),
      subtitle: const Text("Message and callls are secured with..."),
      
    );
  } 

  Widget customChatFriends(User user) {
    return SizedBox(
      width: 80,
      height: 100,
      child: Column(
        children: [
          customCircleAvatar(img: user.avatar, isOnline: false),
          const SizedBox(
            height: 5,
          ),
          Text(user.name)
        ],
      ),
    );
  }
}
