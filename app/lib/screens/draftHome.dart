import 'package:flutter/material.dart';
import 'package:kontrollu_saglik/constants/Theme.dart';
import 'package:kontrollu_saglik/widgets/drawer.dart';

class DraftHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: NowDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(),
        ));
  }
}
