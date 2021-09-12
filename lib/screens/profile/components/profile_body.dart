import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/config/palette.dart';
import 'package:flutter_clubhouse_ui/screens/profile/components/profile_pic.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfilePic(),
            ],
          ),
          const SizedBox(height: 20),
          MenuButtons(text: "Profile",icon:Icons.account_circle_outlined),
          MenuButtons(text: "Security",icon:Icons.security),
          MenuButtons(text: "About Clubhouse",icon:Icons.info),
          MenuButtons(text: "Help Center",icon:Icons.help_center),
          MenuButtons(text: "Log Out",icon:Icons.logout_outlined,color: Colors.deepOrange,),
          Image(image: NetworkImage("https://www.adweek.com/wp-content/uploads/2021/07/ClubhouseLogoJuly2021.jpg"))
        ],
      ),
    );
  }
}

class MenuButtons extends StatelessWidget {
  const MenuButtons({
    Key? key,required this.text,required this.icon, this.color=Palette.green,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: color,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
