import 'dart:html' as html;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Screens/Widgets/Featured%20works.dart';
import 'package:portfolio/Screens/Widgets/SocialMedia.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constants/CustomText.dart';
import '../Constants/Dimension.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  final List<String> imgList = ["https://images.unsplash.com/photo-1501432377862-3d0432b87a14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',

    "https://images.unsplash.com/photo-1635863138275-d9b33299680b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80",
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',

    "https://images.unsplash.com/photo-1584345604476-8ec5e12e42dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        "https://images.unsplash.com/photo-1618336753974-aae8e04506aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
    "https://images.unsplash.com/photo-1596727147705-61a532a659bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',

    "https://images.unsplash.com/flagged/photo-1589829482673-03413c918c48?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=742&q=80",
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(children: [
    LayoutBuilder(builder: (BuildContext , n ) { return n.maxHeight<n.maxWidth? Opacity(opacity: 0.7,
        child: Container(child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_9hkz5kui.json"),)):Container(); },),
            Positioned(right: 50,top: D.Hight100,
                child: Opacity(opacity: 0.5,
                  child: Container(width: D.Hight100*7,
                    child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_sj5csgtp.json"),),
                )),
            Positioned(bottom: 0,
                child: Opacity(opacity: 0.2,
                  child: Container(
                    child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_ysbhqsuf.json"),),
                )),
            Container(
              margin: EdgeInsets.only(top: D.Hight10),
              child: SingleChildScrollView(controller: _controller,
                child: Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly ,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(onTap: (){
                          html.window.open('https://github.com/nacpa?tab=repositories', 'new tab');
                        },
                            child: CustomText("", txt: "Works", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true)),
                        SizedBox(
                          width: D.Hight20,
                        ),
                        CustomText("", txt: "Blog", txtSize: D.Hight20/1.6, clr:Colors.blueGrey, bold: true),
                        SizedBox(
                          width: D.Hight20,
                        ),
                        GestureDetector(onTap: (){
                          final Position=_controller.position.maxScrollExtent;
                          _controller.jumpTo(Position);
                          ;},
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
                            },
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Container(
                                  height: D.Hight30*1.4,
                                  width: D.Hight100*1.5,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(D.Hight20)),
                                  child: Center(child: Text("Download Resume",style: TextStyle(fontSize: D.Hight20/1.5,color: Colors.white,shadows: [BoxShadow(
                                      color: Color(0x3f383a3b),
                                      blurRadius: 10,
                                      offset: Offset(0, 4),
                                      spreadRadius:3
                                  )]))),
                                ),SizedBox(width: D.Hight30,),
                                  GestureDetector(onTap: (){
                                    html.window.open("callto:+917523893279", "new window");
                                  },
                                    child: Container(height: D.Hight30*2,width: D.Hight30*2,
                                      decoration: BoxDecoration(shape: BoxShape.circle
                                      ),
                                      child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_veeohwtn.json"),),
                                  )],),
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
                    Container(padding: EdgeInsets.symmetric(horizontal: D.Hight20,vertical: D.Hight30),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(D.Hight30),color: Color(0xffEDF7FA)),
                      height: D.Hight100*3,width:D.Width,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
                          SizedBox(height: D.Hight10,),
                          Container(height: D.Hight100*2.1,width: double.maxFinite,
                            child: CarouselSlider(options: CarouselOptions(height: D.Hight100*3,enableInfiniteScroll: true,autoPlay: true,enlargeCenterPage: true,viewportFraction: 0.3), items: imgList.map((e) => ClipRRect(borderRadius: BorderRadius.circular(D.Hight100/5),
                              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(D.Hight30)),
                                height: D.Hight100*3,width: D.Hight100*5,
                                child: Image(image: NetworkImage(e.toString()),fit: BoxFit.fill,),),
                            )).toList(),),
                          )
                        ],),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: D.Hight100*2.5),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Featuredworks()

                        ],
                      ),
                    ),
                    SizedBox(height: D.Hight100,),
                    Social()
                  ],
                ),
              ),
            )
          ],),
        )),
      );

  }
}
