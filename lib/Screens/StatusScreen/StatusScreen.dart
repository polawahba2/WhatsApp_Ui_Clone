import 'package:flutter/material.dart';
import 'package:whats_app_clone/Compounent/Constant.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: const [
                        CircleAvatar(
                          radius: 29,
                          backgroundImage: NetworkImage(
                            'https://i.guim.co.uk/img/media/1d554a94e069940467d47735238d1941e83e5877/0_611_3029_1818/master/3029.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=667231b0d8d4615e437ba793da77f569',
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: kDefaultColor,
                              radius: 12,
                              child: Icon(
                                Icons.add_outlined,
                                color: Colors.white,
                                size: 19,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My status',
                          style: kMainStyle(),
                        ),
                        Text(
                          'Tap to add status update ',
                          style: kHintStyle(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 14.0,
              ),
              child: Text(
                'Recent updates',
                style: kStatusUpdatesStyle(),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return buildStatus();
              },
              itemCount: 4,
            )
          ],
        ),
      ),
    );
  }
}

Widget buildStatus() => Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                border: Border.all(
                  color: kDefaultColor,
                  width: 2.5,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.5,
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://phantom-marca.unidadeditorial.es/e66531b384c1535578b2712a4b801265/resize/1320/f/jpg/assets/multimedia/imagenes/2021/12/23/16402355252368.jpg',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'bill gates',
                    style: kMainStyle(),
                  ),
                  Text(
                    'Yesterday, 10:28 PM',
                    style: kHintStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
