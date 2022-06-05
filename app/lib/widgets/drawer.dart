import 'package:flutter/material.dart';
import 'package:kontrollu_saglik/constants/Theme.dart';
import 'package:kontrollu_saglik/widgets/drawer-tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NowDrawer extends StatelessWidget {
  final String currentPage;

  NowDrawer({this.currentPage});

  _launchURL() async {
    const url = 'https://github.com/AzazelSensei/kontrollu-saglik-app';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: UIColors.primary,
      child: Column(children: [
        //Header Section
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.85,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Image.asset("assets/imgs/logo.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: IconButton(
                          icon: Icon(Icons.menu,
                              color: UIColors.white.withOpacity(0.82),
                              size: 30.0),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  ],
                ),
              ),
            )),

        //Menu Button List
        Expanded(
          flex: 2,
          child: ListView(
            padding: EdgeInsets.only(top: 36, left: 8, right: 16),
            children: [
              DrawerTile(
                  icon: FontAwesomeIcons.home,
                  onTap: () {
                    if (currentPage != "Home")
                      Navigator.pushReplacementNamed(context, '/home');
                  },
                  iconColor: UIColors.primary,
                  title: "Ana Sayfa",
                  isSelected: currentPage == "Home" ? true : false),
              DrawerTile(
                  icon: FontAwesomeIcons.dharmachakra,
                  onTap: () {
                    if (currentPage != "Components")
                      Navigator.pushReplacementNamed(context, '/components');
                  },
                  iconColor: UIColors.error,
                  title: "Detaylar",
                  isSelected: currentPage == "Components" ? true : false),

              ///DRAWER DİĞER PLANLANAN BAŞLIKLAR
              // DrawerTile(
              //     icon: FontAwesomeIcons.newspaper,
              //     onTap: () {
              //       if (currentPage != "Articles")
              //         Navigator.pushReplacementNamed(context, '/articles');
              //     },
              //     iconColor: UIColors.primary,
              //     title: "Haberler",
              //     isSelected: currentPage == "Articles" ? true : false),
              // DrawerTile(
              //     icon: FontAwesomeIcons.user,
              //     onTap: () {
              //       if (currentPage != "Profile")
              //         Navigator.pushReplacementNamed(context, '/profile');
              //     },
              //     iconColor: UIColors.warning,
              //     title: "Profil",
              //     isSelected: currentPage == "Profile" ? true : false),
              // DrawerTile(
              //     icon: FontAwesomeIcons.fileInvoice,
              //     onTap: () {
              //       if (currentPage != "Account")
              //         Navigator.pushReplacementNamed(context, '/account');
              //     },
              //     iconColor: UIColors.info,
              //     title: "Hesap",
              //     isSelected: currentPage == "Account" ? true : false),
              DrawerTile(
                  icon: FontAwesomeIcons.cog,
                  onTap: () {
                    if (currentPage != "Settings")
                      Navigator.pushReplacementNamed(context, '/settings');
                  },
                  iconColor: UIColors.success,
                  title: "Ayarlar",
                  isSelected: currentPage == "Settings" ? true : false),
            ],
          ),
        ),

        //Footer Section
        Expanded(
          flex: 1,
          child: Container(
              padding: EdgeInsets.only(left: 8, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      height: 4,
                      thickness: 0,
                      color: UIColors.white.withOpacity(0.8)),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
                    child: Text("Github ve Dökümantasyon",
                        style: TextStyle(
                          color: UIColors.white.withOpacity(0.8),
                          fontSize: 15,
                        )),
                  ),
                  DrawerTile(
                      icon: FontAwesomeIcons.satellite,
                      onTap: _launchURL,
                      iconColor: UIColors.muted,
                      title: "Bağlantı",
                      isSelected:
                          currentPage == "Getting started" ? true : false),
                ],
              )),
        ),
      ]),
    ));
  }
}
