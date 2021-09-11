import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/data.dart';

class ProfilePic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: CircleAvatar(backgroundImage: NetworkImage(currentUser.imageUrl),),
    );
  }
}