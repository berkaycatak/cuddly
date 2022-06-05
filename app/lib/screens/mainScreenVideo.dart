import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kontrollu_saglik/widgets/drawer.dart';
import 'package:kontrollu_saglik/widgets/navbar.dart';
import 'package:sizer/sizer.dart';

class Service {
  Service({this.name, this.description, this.url, this.padding});

  String name;
  String description;
  String url;
  double pad;
  EdgeInsets padding;
}

// ignore: must_be_immutable
class MainVideoScreen extends StatefulWidget {
  @override
  State<MainVideoScreen> createState() => _MainVideoScreenState();
}

class _MainVideoScreenState extends State<MainVideoScreen> {
  // Color primaryColor = Color.fromARGB(255, 255, 124, 23);
  Color primaryColor = Colors.black;

  double containerHeight = 20.h;

  double fullContainerHeight = 25.h;

  Color arrowButton = Color.fromARGB(255, 158, 124, 124);

  bool switchValueOne;
  bool switchValueTwo;

  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var containerSize = MediaQuery.of(context).size.width / 3;

    //This is a list that generates all the content below the logo
    List<Widget> customList = [
      //User Profile Section
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sağlık Hakkında Her Şey',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  'KONTROLLÜ SAĞLIK',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            // GFAvatar(
            //   size: 5.h,
            //   // backgroundImage: NetworkImage(
            //   //     "https://images.unsplash.com/photo-1650765815206-2884e7d"
            //   //     "31cab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
            // ),
          ],
        ),
      ),

      SizedBox(
        height: 5.h,
      ),

      //Explore Services Section Horizontal Section
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Section Title
            Padding(
              padding: EdgeInsets.only(left: 36, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Text(
                  //   'Our',
                  //   style: GoogleFonts.inter(
                  //     // fontStyle: FontStyle.italic,
                  //     fontWeight: FontWeight.w200,
                  //     fontSize: 18.sp,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 1.w,

                  Text(
                    'Kategoriler',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 19.sp,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),

            //Horizontal Scroll Of Services
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //İlk yardım
                  Padding(
                    padding: EdgeInsets.only(left: 36, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/photos");
                      },
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/imgs/PhotoBack.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'İlk Yardım',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            ImageIcon(
                                              AssetImage(
                                                "assets/imgs/Round ButtonRight.png",
                                              ),
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            ImageIcon(
                                              AssetImage(
                                                  "assets/imgs/Round ButtonShape.png"),
                                              color: arrowButton,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        height: containerHeight,
                      ),
                    ),
                  ),

                  //Videography Services
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        print("We want Videography Services, get me right");
                        Navigator.pushNamed(context, "/videos");
                      },
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/imgs/Video.png"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(
                                      4, 4), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Text(
                                    'Videography',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          // ClipRRect(
                                          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                          //   child: Container(color: Colors.white,
                                          //     width: 20,
                                          //     height: 20,
                                          //   ),
                                          // ),
                                          ImageIcon(
                                            AssetImage(
                                              "assets/imgs/Round ButtonRight.png",
                                            ),
                                            color: Colors.white,
                                            size: 19,
                                          ),

                                          ImageIcon(
                                            AssetImage(
                                                "assets/imgs/Round ButtonShape.png"),
                                            color: arrowButton,
                                          ),

                                          // Icon(FontAwesomeIcons.chevronCircleRight,
                                          //   color: Color.fromARGB(255, 0, 255, 191),),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        height: containerHeight,
                      ),
                    ),
                  ),

                  //Web Design Services
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/web");
                        print("We want Web Design Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              // child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                              //     fit: BoxFit.cover,
                              //     width: MediaQuery.of(context).size.width / 3
                              // ),

                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgs/Web.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 12),
                                      child: Text(
                                        'Web Design',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 8, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              ImageIcon(
                                                AssetImage(
                                                  "assets/imgs/Round ButtonRight.png",
                                                ),
                                                color: Colors.white,
                                                size: 19,
                                              ),

                                              ImageIcon(
                                                AssetImage(
                                                    "assets/imgs/Round ButtonShape.png"),
                                                color: arrowButton,
                                              ),

                                              // Icon(FontAwesomeIcons.chevronCircleRight,
                                              //   color: Color.fromARGB(255, 0, 255, 191),),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: containerHeight,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Marketing Services
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/market");
                        print("We want Marketing Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/imgs/marketing.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 12),
                                      child: Text(
                                        'Marketing',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 8, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              // ClipRRect(
                                              //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                              //   child: Container(color: Colors.white,
                                              //     width: 20,
                                              //     height: 20,
                                              //   ),
                                              // ),
                                              ImageIcon(
                                                AssetImage(
                                                  "assets/imgs/Round ButtonRight.png",
                                                ),
                                                color: Colors.white,
                                                size: 19,
                                              ),

                                              ImageIcon(
                                                AssetImage(
                                                    "assets/imgs/Round ButtonShape.png"),
                                                color: arrowButton,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: containerHeight,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Software Development
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/software");
                        print(
                            "We want Software Development Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/imgs/Software.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 12, left: 16),
                                      child: Text(
                                        'Software Development',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 8, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              ImageIcon(
                                                AssetImage(
                                                  "assets/imgs/Round ButtonRight.png",
                                                ),
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                              ImageIcon(
                                                AssetImage(
                                                    "assets/imgs/Round ButtonShape.png"),
                                                color: arrowButton,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: containerHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //Client Portal
      SizedBox(
        height: 6.h,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            //Section Title
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text(
                //   'Soru',
                //   style: GoogleFonts.roboto(
                //     fontWeight: FontWeight.w200,
                //     fontSize: 18.sp,
                //     color: Colors.white,
                //   ),
                // ),
                // SizedBox(
                //   width: 8,
                // ),
                Text(
                  'Soru-Cevap',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.sp,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: fullContainerHeight,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/ClientPortal.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    ];
    //End of Content List

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 227, 227),
      drawer: NowDrawer(currentPage: "Home"),
      body: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/imgs/bg.png"),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          SafeArea(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        iconSize: 3.4.h,
                      ),
                      Divider(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                        child: Image.asset(
                          'assets/imgs/logo.png',
                          width: 15.w,
                        ),
                      ),
                      Divider(
                        height: 3.h,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/settings");
                        },
                        icon: Icon(Icons.settings),
                        iconSize: 3.4.h,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: customList,
                    ),
                  ),
                  Container(
                    color: Colors.black.withAlpha(120),
                    height: 6.h,
                    child: Container(
                      child: GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Çıkış Yap',
                              style: GoogleFonts.roboto(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 22),
                              child: Icon(
                                FontAwesomeIcons.signOutAlt,
                                color: arrowButton.withAlpha(255),
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          print('GG');
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
