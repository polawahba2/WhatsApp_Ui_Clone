import 'package:flutter/material.dart';
import 'package:whats_app_clone/Compounent/Constant.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return buildChat();
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: double.infinity,
        height: 1.0,
      ),
      itemCount: 10,
    );
  }
}

Widget buildChat() => Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 29,
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1387065127208247299/bni08CVZ.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'billiee ilish',
                    style: kMainStyle(),
                  ),
                  Text(
                    'good night  ❤️❤️ ',
                    style: kHintStyle(),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              '20:22',
              style: kHintStyle(),
            ),
          ],
        ),
      ),
    );
