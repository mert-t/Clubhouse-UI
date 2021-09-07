import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';

import '../data.dart';

  AppBar customAppBar() {
    return AppBar(
      elevation: 0,
      leading: CustomIcon(press:(){}, icon: CupertinoIcons.search,size: 28.0,),
      actions: [
        CustomIcon(press:(){}, icon: CupertinoIcons.envelope,size: 28.0,),
        CustomIcon(press:(){}, icon: CupertinoIcons.calendar,size: 28.0,),
        CustomIcon(press:(){}, icon: CupertinoIcons.bell,size: 28.0,),
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

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key, required this.press, required this.icon, required this.size,
  }) : super(key: key);
 final GestureTapCallback press;
 final IconData icon;
 final double size;


  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: Icon(
       icon,
        color: Colors.black,
        size:size,
      ),
    );
  }
}