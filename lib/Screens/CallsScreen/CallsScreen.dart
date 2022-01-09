import 'package:flutter/material.dart';
import 'package:whats_app_clone/Compounent/Constant.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 15.0,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return buildCalls();
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: double.infinity,
          height: 1.0,
        ),
        itemCount: 10,
      ),
    );
  }
}

Widget buildCalls() => Padding(
      padding: const EdgeInsets.only(top: 19.0),
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
                  Row(
                    children: [
                      const Icon(
                        Icons.call_received_rounded,
                        color: Colors.red,
                        size: 15,
                      ),
                      Text(
                        'January 6, 4:51 PM',
                        style: kHintStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.videocam,
              color: kDefaultColor,
            ),
          ],
        ),
      ),
    );
