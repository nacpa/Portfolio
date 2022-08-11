import 'dart:html' as html;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Screens/Widgets/Featured%20works.dart';
import 'package:portfolio/Screens/Widgets/SocialMedia.dart';

import '../Constants/CustomText.dart';
import '../Constants/Data.dart';
import '../Constants/Dimension.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: LayoutBuilder(
        builder: (BuildContext, S) {
          return SafeArea(
            child: Stack(
              children: [
                if(S.maxHeight<=S.maxWidth)Opacity(
                    opacity: 0.7,
                    child: Container(
                      child: Lottie.network(
                          "https://assets8.lottiefiles.com/packages/lf20_9hkz5kui.json"),
                    )),
                if (S.maxHeight <= S.maxWidth)Positioned(
                      right: 50,
                      top: D.Hight100,
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          width: D.Hight100 * 7,
                          child: Lottie.network(
                              "https://assets8.lottiefiles.com/packages/lf20_sj5csgtp.json"),
                        ),
                      )),
                if(S.maxHeight<=S.maxWidth)Positioned(
                    bottom: 0,
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                        child: Lottie.network(
                            "https://assets8.lottiefiles.com/packages/lf20_ysbhqsuf.json"),
                      ),
                    )),
                if(S.maxHeight>S.maxWidth)Opacity(opacity: 0.4,
                  child: Container(height: S.maxHeight,width: S.maxWidth,
                    child: Lottie.network("https://assets1.lottiefiles.com/private_files/lf30_aoctayq7.json",fit: BoxFit.fill,),),
                ),
                Container(
                  margin: EdgeInsets.only(top: D.Hight10),
                  child: SingleChildScrollView(
                    controller: _controller,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  html.window.open(
                                      'https://github.com/nacpa?tab=repositories',
                                      'new tab');
                                },
                                child: CustomText("",
                                    txt: "Works",
                                    txtSize: D.Hight20 / 1.6,
                                    clr: Colors.blueGrey,
                                    bold: true)),
                            SizedBox(
                              width: D.Hight20,
                            ),
                            CustomText("",
                                txt: "Blog",
                                txtSize: D.Hight20 / 1.6,
                                clr: Colors.blueGrey,
                                bold: true),
                            SizedBox(
                              width: D.Hight20,
                            ),
                            GestureDetector(
                                onTap: () {
                                  final Position =
                                      _controller.position.maxScrollExtent;
                                  _controller.jumpTo(Position);
                                  ;
                                },
                                child: CustomText("",
                                    txt: "Contact",
                                    txtSize: D.Hight20 / 1.6,
                                    clr: Colors.blueGrey,
                                    bold: true)),
                            SizedBox(
                              width: D.Hight20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: D.Hight100/2,
                        ),
                        if (S.maxHeight < S.maxWidth)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, I am Nachiketa,\nFlutter Developer",
                                    style: TextStyle(fontSize: D.Hight30 * 1.5),
                                  ),
                                  Text(
                                      " Software Engineer who is passionate about tech.\nSome Technologies i enjoy working with include\nFlutter ,Android and ios App developmet.\nSeasoned professional with 8 Monts of experience,\nExpert in Flutter,\nFluent in Dart & C++.",
                                      style: TextStyle(fontSize: D.Hight20,overflow: TextOverflow.ellipsis)),
                                  SizedBox(
                                    height: D.Hight30,
                                  ),

                                     Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(onTap: (){ html.window.open(
                                            'https://nacpa.github.io/resume/',
                                            'new tab');},
                                          child: Container(
                                            height: D.Hight30 * 1.4,
                                            width: D.Hight100 * 1.5,
                                            decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius: BorderRadius.circular(
                                                    D.Hight20)),
                                            child: Center(
                                                child: Text("Download Resume",
                                                    style: TextStyle(
                                                        fontSize: D.Hight20 / 1.5,
                                                        color: Colors.white,
                                                        shadows: [
                                                          BoxShadow(
                                                              color:
                                                                  Color(0x3f383a3b),
                                                              blurRadius: 10,
                                                              offset: Offset(0, 4),
                                                              spreadRadius: 3)
                                                        ]))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: D.Hight30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            html.window.open(
                                                "callto:+917523893279",
                                                "new window");
                                          },
                                          child: Container(
                                            height: D.Hight30 * 2,
                                            width: D.Hight30 * 2,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle),
                                            child: Lottie.network(
                                                "https://assets9.lottiefiles.com/packages/lf20_veeohwtn.json",fit: BoxFit.fill),
                                          ),
                                        )
                                      ],
                                    ),

                                  SizedBox(
                                    height: D.Hight10,
                                  )
                                ],
                              ),
                              Container(
                                height: D.Hight100 * 3,
                                width: D.Hight100 * 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/profile.jpg"),
                                      fit: BoxFit.fill),
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        if (S.maxHeight >= S.maxWidth)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: D.Hight100 * 1.5,
                                width: D.Hight100 * 1.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/profile.jpg"),
                                      fit: BoxFit.fill),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(D.Hight10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Hi, I am Nachiketa,\nFlutter Developer",
                                      style: TextStyle(fontSize: D.Hight30 * 1),
                                    ),
                                    SizedBox(height: D.Hight10,),
                                    Container(width: D.Hight100*2.5,
                                      child: Text(
                                          "  Software Engineer who is passionate about tech,Some Technologies i enjoy working with include Flutter ,Android and ios App developmet.Seasoned professional with 8 Monts of experience,Expert in Flutter, Fluent in Dart & C++.",
                                          style: TextStyle(fontSize: D.Hight10*1.5,)),
                                    ),
                                    SizedBox(
                                      height: D.Hight30/2,
                                    ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(onTap: (){ html.window.open(
                                              'https://nacpa.github.io/resume/',
                                              'new tab');},
                                            child: Container(
                                              height: D.Hight30 * 1.4,
                                              width: D.Hight100 * 1.5,
                                              decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(-2,3),color: Colors.black26,blurRadius: 3,spreadRadius: 1)],
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          D.Hight20)),
                                              child: Center(
                                                  child: Text("Download Resume",
                                                      style: TextStyle(
                                                          fontSize: D.Hight20 / 1.5,
                                                          color: Colors.white,
                                                          shadows: [
                                                            BoxShadow(
                                                                color: Color(
                                                                    0x3f383a3b),
                                                                blurRadius: 10,
                                                                offset:
                                                                    Offset(0, 4),
                                                                spreadRadius: 3)
                                                          ]))),
                                            ),
                                          ),
                                          SizedBox(
                                            height: D.Hight20,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              html.window.open(
                                                  "callto:+917523893279",
                                                  "new window");
                                            },
                                            child:Container(
                                              height: D.Hight30 * 1.4,
                                              width: D.Hight100 * 1.5,
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(offset: Offset(-2,3),color: Colors.black26,blurRadius: 3,spreadRadius: 1)],
                                                  color: Colors.green,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      D.Hight20)),
                                              child: Center(
                                                  child: Icon(Icons.call,color: Colors.white,size: D.Hight20,)),
                                            ),
                                          )
                                        ],
                                      ),

                                    SizedBox(
                                      height: D.Hight10,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: D.Hight20, vertical: D.Hight30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(D.Hight30),
                              color: Color(0xffEDF7FA)),
                          height: D.Hight100 * 3,
                          width: D.Width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Resent  Post"),
                                  SizedBox(
                                    width: D.Hight10 * 20.8,
                                    height: D.Hight20,
                                    child: Text(
                                      "View all",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xff00a8cc),
                                        fontSize: D.Hight10 * 1.6,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: D.Hight10,
                              ),
                              Container(
                                height: D.Hight100 * 2.1,
                                width: double.maxFinite,
                                child: CarouselSlider(
                                  options: CarouselOptions(scrollDirection: Axis.horizontal,
                                      height: D.Hight100 * 3,
                                      enableInfiniteScroll: true,
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      viewportFraction: 0.3),
                                  items: Urls.imgList
                                      .map((e) => ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        D.Hight100 / 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(
                                              D.Hight30)),
                                      height: D.Hight100 * 3,
                                      width: D.Hight100 * 5,
                                      child: Image(
                                        image: NetworkImage(e.toString()),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ))
                                      .toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                        if(S.maxHeight<S.maxWidth) Featuredworks(),
                        if(S.maxHeight>=S.maxWidth) Padding(
                          padding:  EdgeInsets.all(D.Hight30),
                          child: Featuredworks_Mobile()
                        ),
                        SizedBox(
                          height: D.Hight100,
                        ),
                        Social()
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ))),
    );
  }
}
