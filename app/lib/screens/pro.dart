// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/Theme.dart';

class Pro extends StatelessWidget {
  _launchURL() async {
    const url = 'https://www.linkedin.com/in/abdullah-gokmen/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/imgs/bg-profile.png"),
                    fit: BoxFit.cover))),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 16.0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Coded By",
                          style: TextStyle(
                              color: UIColors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.3)),
                      Text(" Abdullah Gökmen",
                          style: TextStyle(
                              fontSize: 25,
                              color: UIColors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4)),
                    ],
                  ),
                  Container(
                      child: Center(
                          child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text("UI/UX",
                                  style: TextStyle(
                                      color: UIColors.white,
                                      fontWeight: FontWeight.w600)))),
                      Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text.rich(TextSpan(
                                text: "SOFTWARE ARCHITECTURE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 67,
                                    fontWeight: FontWeight.w600),
                                children: <InlineSpan>[
                                  WidgetSpan(
                                      child: Container(
                                          padding: EdgeInsets.all(2.0),
                                          margin: EdgeInsets.fromLTRB(
                                              16.0, 0.0, 0, 50.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              color: UIColors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 0,
                                                left: 4,
                                                right: 4),
                                            child: Text("™",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 19,
                                                )),
                                          ))),
                                ])),
                          ))
                    ],
                  ))),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Work Smarter, Not Harder...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: UIColors.white,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/imgs/ios.png", scale: 2.6),
                            SizedBox(width: 30.0),
                            Image.asset("assets/imgs/android.png", scale: 2.6)
                          ]),
                      SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: FlatButton(
                            textColor: UIColors.white,
                            color: UIColors.info,
                            onPressed: _launchURL,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    top: 12,
                                    bottom: 12),
                                child: Text("LINKEDIN?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0))),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
