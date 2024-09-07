import 'package:facebook_app/constants/color.dart';
import 'package:facebook_app/constants/data.dart';
import 'package:facebook_app/models/user.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
            const SizedBox(
              height: 15,
            ),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Friend request (4)",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  return friendRequestTile(usersList[index]);
                })
          ],
        ),
      ),
    );
  }

  Widget friendRequestTile(User user) {
    return SizedBox(
      child: Row(
        
        children: [
          const SizedBox(
            width: 3,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(user.avatar), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
             const SizedBox(height: 8,),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
          const SizedBox(width: 10,),
               Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              
              const Text("3w"),
              const SizedBox(height: 8,),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
