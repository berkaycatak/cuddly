import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glass/glass.dart';
import 'package:kontrollu_saglik/constants/Theme.dart';
import 'package:kontrollu_saglik/screens/video_Widget.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ServiceWidget extends StatelessWidget {
  // Color primaryColor = Color.fromARGB(255, 255, 124, 23);
  Color primaryColor = Colors.white;
  double containerHeight = 20.h;
  double fullContainerHeight = 50.h;
  Color logoColor = Color.fromARGB(255, 255, 124, 23);

  ServiceWidget({this.serviceName, this.serviceBody, this.imageReference});

  String serviceName;
  String serviceBody;
  String imageReference;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var containerSize = MediaQuery.of(context).size.width / 3;

    //This is a list that generates all the content below the logo
    List<Widget> customList = [
      SizedBox(
        height: 4.h,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Section Title
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.sp,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
                      child: Container(
                        height: fullContainerHeight,
                        width: 90.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imageReference),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.sp,
                    ),
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.all(Radius.circular(20.0.sp)),
                        child: Container(
                          height: fullContainerHeight,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/imgs/ClientPortal.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        print('Hello Portal');
                      },
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 3.h,
            ),
            Text(
              "$serviceName",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              '$serviceBody',
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ];
    //End of Content List

    return Scaffold(
        backgroundColor: UIColors.bgColorScreen,
        // drawer: NowDrawer(currentPage: "Articles"),
        body: Stack(
          children: [
            VideoWidget().asGlass(
              frosted: true,
              blurX: 50.0,
              blurY: 50.0,
            ),
            Container(
              color: Color.fromARGB(50, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ).asGlass(tintColor: Colors.black, blurX: 5, blurY: 5),
            SafeArea(
                child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                FontAwesomeIcons.arrowLeft,
                                color: primaryColor,
                              ),
                            )),
                        Image.asset(
                          'assets/imgs/logo.png',
                          width: 25.w,
                        ),
                        SizedBox(
                          width: 15.w,
                        )
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: customList,
                    ),
                  ),

                  //Footer
                  Container(
                    color: Colors.black.withAlpha(0),
                    height: 10.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //Here
                        GestureDetector(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Book Appointment',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: logoColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Icon(
                                  FontAwesomeIcons.arrowRight,
                                  color: Colors.white,
                                  size: 14.sp,
                                )
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.sp, vertical: 10.sp),
                            decoration: BoxDecoration(
                                color: Colors.black.withAlpha(125),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp))),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('Button Pressed to sign out');
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ));
  }
}
