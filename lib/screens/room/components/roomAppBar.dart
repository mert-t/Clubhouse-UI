  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/screens/profile/profile_screen.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

import '../../../data.dart';

AppBar roomAppBar(BuildContext context) {
    return AppBar(
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
          icon: const Icon(
            CupertinoIcons.doc,
            size: 28.0,
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
        fullscreenDialog: true, builder: (_) => ProfileScreen())),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: UserProfileImage(
              imageUrl: currentUser.imageUrl,
              size: 36.0,
            ),
          ),
        ),
      ],
    );
  }