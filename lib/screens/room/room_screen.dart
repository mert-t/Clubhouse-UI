
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data.dart';
import 'components/bottom_sheet.dart';
import 'components/roomAppBar.dart';
import 'components/room_body.dart';

class RoomScreen extends StatelessWidget {
  final Room room;
  const RoomScreen({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: roomAppBar(context),
      body: RoomBody(room: room),
      bottomSheet: bottomSheet(context),
    );
  }
}
