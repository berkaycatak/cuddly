import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:getwidget/getwidget.dart';
import 'package:rive/rive.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroState();
  }
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    bool _visible = true;

    return Scaffold(
      body: SlidingUpPanel(
        body: Stack(
          children: [
            RiveAnimation.asset(
              'assets/imgs/3d_raster_test.riv',
              fit: BoxFit.cover,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 310),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Sağlığınız İçin Aradığınız',
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        // shadows: <Shadow> [
                        //   Shadow(
                        //     offset: Offset(3.0, 1.0),
                        //     blurRadius: 5.0,
                        //     color: Color.fromARGB(127, 0, 0, 0),
                        //   ),
                        // ],
                      ),
                      speed: const Duration(milliseconds: 75),
                    ),
                    TypewriterAnimatedText(
                      'Her Şey Bu Uygulamada',
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                    TypewriterAnimatedText(
                      'Kontrollü Sağlık',
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
              ),
            )
          ],
        ),
        maxHeight: 700.0,
        minHeight: 50.0,
        panel: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Pull up tab
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Center(
                      child: Container(
                    color: Colors.white.withAlpha(200),
                    width: 170.0,
                    height: 5.0,
                  ))),
            ),

            //Panel code
            Container(
                height: 675,
                //panel Background
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(235),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                ),

                //Main Layout Column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Login In Forum
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),

                          Text(
                            "Giriş Yap",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),

                          SizedBox(
                            height: 5,
                          ),

                          Text(
                            "Mail Adresiniz ile Giriş Yapın",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),

                          //Email field Section
                          Text(
                            "Mail Adresi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 30, 26, 26),
                                hintText: " "),
                          ),

                          SizedBox(
                            height: 50,
                          ),

                          //Password field Section
                          Text(
                            "Şifre",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 30, 26, 26),
                                hintText: ""),
                          ),
                          Divider(
                            height: 15,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Şifremi Unuttum?",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Login Button
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Hesabım Yok. Hesap Oluştur!",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, .5)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        GFButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          text: "Giriş Yap",
                          textStyle: TextStyle(
                              color: Color.fromRGBO(240, 255, 255, 100),
                              fontSize: 22,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold),
                          size: 65,
                          fullWidthButton: true,
                          color: Color.fromRGBO(255, 124, 23, 1),
                          // padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            blurRadius: 40,
          ),
        ],
        color: Colors.green.withAlpha(0),
        onPanelClosed: () {
          setState(() {
            _visible = false;
          });
        },
      ),
    );
  }
}
