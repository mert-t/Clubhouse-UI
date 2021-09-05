import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';

import '../data.dart';

  AppBar customAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.black,
          size: 28.0,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.envelope_open,
            color: Colors.black,
            size: 26.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.calendar,
            color: Colors.black,
            size: 28.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bell,
            color: Colors.black,
            size: 28.0,
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,10.0),
            child: UserProfileImage(imageUrl:currentUser.imageUrl,size: 36.0,),
          ),
        )
      ],
    );
  }