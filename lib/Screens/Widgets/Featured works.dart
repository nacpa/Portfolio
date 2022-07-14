import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Constants/CustomText.dart';

import '../../Constants/Dimension.dart';

class Featuredworks extends StatelessWidget {
  const Featuredworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Container(
      width: D.Hight10 *24.6,
      height: D.Hight10 *18.0,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(D.Hight20),

      ),
child: FlutterLogo(),
    ),
      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        CustomText("", txt: "Designing Dashboards", txtSize: D.Hight20, clr: Colors.black, bold: true),
        SizedBox(height: D.Hight10,),
        Row(
          children: [
          Container(
            width: D.Hight10 *6.2,
            height: D.Hight10 *2.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(D.Hight10 *1.6),
              color: Color(0xff142850),
            ),child: Center(child: CustomText('', txt: "2022", txtSize: D.Hight10*1.5, clr: Colors.white, bold: false)),),
            SizedBox(width: D.Hight10,),
          CustomText("", txt: "DashBoard", txtSize: D.Hight20/1.4, clr: Colors.blueGrey, bold: false)


        ],),SizedBox(height: D.Hight10,),
        CustomText("", txt: "Amet minim mollit non deserunt ullamco est sit aliqua dolor \ndo amet sint. Velit officia consequat duis enim velit mollit. \nExercitation veniam consequat sunt nostrud amet.", txtSize: D.Hight10, clr: Colors.blueGrey, bold: false),
      ],)
    ],),);
  }
}
