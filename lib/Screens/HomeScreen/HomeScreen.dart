import 'package:flutter/material.dart';
import 'package:whats_app_clone/Screens/CallsScreen/CallsScreen.dart';
import 'package:whats_app_clone/Screens/ChatsScreen/ChatsScreen.dart';
import 'package:whats_app_clone/Screens/StatusScreen/StatusScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screensList = [
    Container(),
    ChatsScreen(),
    StatusScreen(),
    CallScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whats App'),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 8.0,
              ),
              child: Icon(Icons.more_vert_outlined),
            ),
          ],
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: screensList[currentIndex],
      ),
    );
  }
}
