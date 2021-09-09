import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';

import '../data.dart';

class RoomScreen extends StatelessWidget {
  final Room room;
  const RoomScreen({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120.0,
        elevation: 0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(CupertinoIcons.chevron_down),
          label: const Text("All rooms"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.doc, size: 28.0,color: Colors.black,),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
