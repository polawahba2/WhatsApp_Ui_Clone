import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whats_app_clone/Compounent/Constant.dart';

class ChatInfo extends StatelessWidget {
  const ChatInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1387065127208247299/bni08CVZ.jpg',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'billiee ilish',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.videocam,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      buildMassage('hello  ,Welcome'),
                      buildMyMassage('hello  ,Welcome'),
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                            ),
                            child: Icon(
                              Icons.tag_faces_sharp,
                              size: 30,
                            ),
                          ),
                          hintText: 'Message',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kDefaultColor,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.mic,
                          size: 23.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMyMassage(String message) {
  return Align(
    alignment: AlignmentDirectional.centerStart,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(15.0),
            bottomEnd: Radius.circular(15.0),
            bottomStart: Radius.circular(15.0),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}

Widget buildMassage(String message) {
  return Align(
    alignment: AlignmentDirectional.centerEnd,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            // topEnd: Radius.circular(15.0),
            topStart: Radius.circular(15.0),
            bottomStart: Radius.circular(15.0),
            bottomEnd: Radius.circular(15.0),
          ),
          color: kDefaultColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
