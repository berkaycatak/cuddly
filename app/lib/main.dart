import 'package:flutter/material.dart';
import 'package:kontrollu_saglik/screens/ServicePage.dart';
import 'package:kontrollu_saglik/screens/articles.dart';
import 'package:kontrollu_saglik/screens/getStarted.dart';
import 'package:kontrollu_saglik/screens/inquriry.dart';
import 'package:kontrollu_saglik/screens/introScreen.dart';
import 'package:kontrollu_saglik/screens/mainScreen.dart';
import 'package:kontrollu_saglik/screens/mainScreenVideo.dart';
import 'package:kontrollu_saglik/screens/photographyServices.dart';
import 'package:kontrollu_saglik/screens/pro.dart';
import 'package:kontrollu_saglik/screens/profile.dart';
import 'package:kontrollu_saglik/screens/register.dart';
import 'package:kontrollu_saglik/screens/services.dart';
import 'package:kontrollu_saglik/screens/settings.dart';
import 'package:kontrollu_saglik/screens/videographyServices.dart';
import 'package:sizer/sizer.dart';

import 'screens/components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Kontrollü Sağlık',
        debugShowCheckedModeBanner: false,
// theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: "/intro",
        routes: <String, WidgetBuilder>{
          '/settings': (BuildContext context) => new Settings(),
          "/intro": (BuildContext context) => new Intro(),
          "/OldHome": (BuildContext context) => new MainScreen(),
          "/pro": (BuildContext context) => new Pro(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/components": (BuildContext context) => new Components(),
          "/account": (BuildContext context) => new Register(),
          "/ask": (BuildContext context) => new Inquiry(),
          "/start": (BuildContext context) => new Started(),
          "/services": (BuildContext context) => new Services(),
          "/home": (BuildContext context) => new MainVideoScreen(),
          "/photos": (BuildContext context) => new PhotographyScreen(),
          "/videos": (BuildContext context) => new VideoraphyScreen(),
          "/web": (BuildContext context) => new ServiceWidget(
                serviceName: "Web Design Services",
                serviceBody:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',
                imageReference: "assets/imgs/Web.png",
              ),
          "/market": (BuildContext context) => new ServiceWidget(
                serviceName: "Marketing Servcies",
                serviceBody:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',
                imageReference: "assets/imgs/marketing.png",
              ),
          "/software": (BuildContext context) => new ServiceWidget(
                serviceName: "Software Development",
                serviceBody:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',
                imageReference: "assets/imgs/Software.png",
              ),
        },
      );
    });
  }
}
