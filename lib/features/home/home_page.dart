import 'package:facebook_app/constants/color.dart';
import 'package:facebook_app/features/chats/chats_page.dart';
import 'package:facebook_app/features/friends/friend_page.dart';
import 'package:facebook_app/features/home/home.dart';
import 'package:facebook_app/features/market/market_page.dart';
import 'package:facebook_app/features/notifacation.dart/notifacation_page.dart';
import 'package:facebook_app/features/vedios/vedios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  init() {}
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  final List<Widget> pages = [
     Home(),
    const FriendPage(),
    const ChatsPage(),
    const NotifacationPage(),
    const VediosPage(),
    const MarketPage()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorDark,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColorDark,
          title: const Text(
            "facebook",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
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
                      Icons.menu,
                      color: AppColor.iconColorLight,
                    )),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            onTap: (index){
      
            },
            indicatorColor: Colors.blue,
      
            tabs: const [
              Tab(icon: Icon(Icons.home),),
               Tab(icon: Icon(Icons.people_outlined),),
                Tab(icon: Icon(CupertinoIcons.chat_bubble_text_fill),),
                 Tab(icon: Icon(Icons.notifications),),
                  Tab(icon: Icon(Icons.ondemand_video_outlined),),
                   Tab(icon: Icon(Icons.home_repair_service_sharp),),
              
            ]),
        ),
        body: TabBarView(
          children: pages),
      ),
    );
  }
}
