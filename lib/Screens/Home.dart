import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Screens/Widgets/Featured%20works.dart';
import 'package:portfolio/Screens/Widgets/SocialMedia.dart';

import '../Constants/CustomText.dart';
import '../Constants/Dimension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                      CustomText("", txt: "Works", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true),
                      SizedBox(
                        width: D.Hight20,
                      ),
                      CustomText("", txt: "Blog", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true),

                      SizedBox(
                        width: D.Hight20,
                      ),
                      CustomText("", txt: "Contact", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true),

                      SizedBox(
                        width: D.Hight20,
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: D.Hight30,horizontal: D.Hight100/2),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, I am NAchiketa,\nFlutter Developer",style: TextStyle(fontSize: D.Hight30*1.5),),
                            Text(
                                "Amet minim mollit non deserunt ullamco est sit\naliqua dolor do amet sint. Velit officia consequat\nduis enim velit mollit. Exercitation veniam consequat\nsunt nostrud amet.",style: TextStyle(fontSize: D.Hight20)),
                            SizedBox(height: D.Hight30,),
                            Container(
                              height: D.Hight30*1.4,
                              width: D.Hight100*1.5,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(D.Hight20)),
                              child: Center(child: Text("Download Resume",style: TextStyle(fontSize: D.Hight20/1.5,color: Colors.white))),
                            )
                          ],
                        ),
                        Container(
                          height: D.Hight100*2,
                          width: D.Hight100*2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: D.Hight100*3,width:double.maxFinite,
                    color: Color(0xffEDF7FA),child:
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: D.Hight100*3),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Resent  Post"),
                            SizedBox(
                              width: 208,
                              height: 20,
                              child: Text(
                                "View all",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xff00a8cc),
                                  fontSize: 16,
                                ),
                              ),
                            )],),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ],)
                      ],),
                  ),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: D.Hight100*2.5),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Featuredworks(),
                      Featuredworks(),
                      Featuredworks(),
                      Featuredworks(),
                      Featuredworks(),


                    ],

                    ),
                  ),
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
