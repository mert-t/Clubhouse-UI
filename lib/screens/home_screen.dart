import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_clubhouse_ui/widgets/custom_app_bar.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
    );
  }


}
