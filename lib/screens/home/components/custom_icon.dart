import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 60.0,
      right: 40.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.circle_grid_3x3_fill,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          Positioned(
            right: 4.6,
            bottom: 11.8,
            child: Container(
              height: 16.0,
              width: 16.0,
              decoration: BoxDecoration(shape: BoxShape.circle,
              color: Theme.of(context).accentColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}