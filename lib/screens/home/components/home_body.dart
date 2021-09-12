import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/screens/home/components/custom_button.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

import '../../../data.dart';
import 'custom_icon.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ListView(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
          children: [
            UpcomingRooms(upcomingRooms: upcomingRoomsList),
            const SizedBox(
              height: 12.0,
            ),
            ...roomsList.map((e) => RoomCard(room: e))
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                  Theme.of(context).scaffoldBackgroundColor
                ],
              ),
            ),
          ),
        ),
        CustomButton(
          text: 'Start a room',
          icon: CupertinoIcons.add,
        ),
        CustomIcon(),
      ],
    );
  }
}
