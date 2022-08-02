import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Screens/Widgets/Featured%20works.dart';
import 'package:portfolio/Screens/Widgets/SocialMedia.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constants/CustomText.dart';
import '../Constants/Dimension.dart';

class HomeScreen extends StatelessWidget {
  void _launchUrl(Uri url)  {
    launchUrl(url);

  }
  final ScrollController _controller = ScrollController();

  void _scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  final Uri url=Uri.parse("https://github.com/nacpa?tab=repositories");
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: D.Hight10),
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly ,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(onTap: (){
                        html.window.open('https://github.com/nacpa?tab=repositories', 'new tab');
                       print("launcher");
                      },
                          child: CustomText("", txt: "Works", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true)),
                      SizedBox(
                        width: D.Hight20,
                      ),
                      CustomText("", txt: "Blog", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true),
                      SizedBox(
                        width: D.Hight20,
                      ),
                      GestureDetector(onTap: (){_scrollDown();},
                          child: CustomText("", txt: "Contact", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true)),
                      SizedBox(
                        width: D.Hight20,
                      ),
                    ],
                  ),
                  SizedBox(height: D.Hight100,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, I am Nachiketa,\nFlutter Developer",style: TextStyle(fontSize: D.Hight30*1.5),),
                          Text(
                              " Software Engineer who is passionate about tech.\n Some Technologies i enjoy working with include\n Flutter ,Android and ios App developmet.",style: TextStyle(fontSize: D.Hight20)),
                          SizedBox(height: D.Hight30,),
                          GestureDetector(onTap: (){
                            html.window.open('https://nacpa.github.io/resume/', 'new tab');

                            // html.AnchorElement anchorElement =  new html.AnchorElement(href: "https://nacpa.github.io/resume/");
                            // anchorElement.download = "https://nacpa.github.io/resume/";
                            // anchorElement.click();
                          },
                            child: Container(
                              height: D.Hight30*1.4,
                              width: D.Hight100*1.5,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(D.Hight20)),
                              child: Center(child: Text("Download Resume",style: TextStyle(fontSize: D.Hight20/1.5,color: Colors.white,shadows: [BoxShadow(
                                color: Color(0x3f383a3b),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                                spreadRadius:3
                              )]))),
                            ),
                          ),
                          SizedBox(height: D.Hight10,)
                        ],
                      ),
                      Container(
                        height: D.Hight100*3,
                        width: D.Hight100*3,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/profile.jpg"),fit: BoxFit.fill),
                            shape: BoxShape.circle, ),
                      )
                    ],
                  ),
                  Container(
                    height: D.Hight100*3,width:D.Width,
                    color: Color(0xffEDF7FA),child:
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Resent  Post"),
                          SizedBox(
                            width: D.Hight10*20.8,
                            height: D.Hight20 ,
                            child: Text(
                              "View all",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xff00a8cc),
                                fontSize: D.Hight10* 1.6,
                              ),
                            ),
                          )],),
                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: D.Hight10 * 41.8,
                              height: D.Hight10 *21.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(D.Hight30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3fbbe1fa),
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: D.Hight20,),
                            Container(
                              width: D.Hight10 * 41.8,
                              height: D.Hight10 *21.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(D.Hight30),
                                color: Colors.white,
                              ),
                            )
                          ],),
                      )
                    ],),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: D.Hight100*2.5),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Featuredworks(),



                    ],

                    ),
                  ),
                  SizedBox(height: D.Hight100,),
                  Social()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
