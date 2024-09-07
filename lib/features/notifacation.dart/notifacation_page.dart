import 'package:facebook_app/constants/color.dart';
import 'package:flutter/material.dart';

class NotifacationPage extends StatelessWidget {
  const NotifacationPage({super.key});

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
                    "Notifacation",
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
            Column(
              children: [
                customNotWidget("assets/images/img1.jpeg", "Your comment was automatically declined in Programming Knowledge(c, C#)"),
                 customNotWidget("assets/images/img1.jpeg", "Your comment was automatically declined in Programming Knowledge(c, C#)"),
                  customNotWidget("assets/images/img1.jpeg", "Your comment was automatically declined in Programming Knowledge(c, C#)"),
                   customNotWidget("assets/images/img1.jpeg", "Your comment was automatically declined in Programming Knowledge(c, C#)")
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget customNotWidget(String img, String text){
    return ListTile(
      leading: CircleAvatar(radius: 30, backgroundImage: AssetImage(img),),
      title: Text(text),
      subtitle: const Text("2 Aug 2024"),
      trailing: const Icon(Icons.more_horiz),
    );
  }
}