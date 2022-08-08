import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Constants/CustomText.dart';
import 'dart:html'as html;
import '../../Constants/Dimension.dart';

class Featuredworks extends StatelessWidget {
  const Featuredworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext , n ) { return Padding(
      padding: EdgeInsets.only(top: D.Hight10),
      child: GestureDetector(onTap: (){
        html.window.open("https://play.google.com/store/apps/details?id=com.speed.get.driver&hl=en&gl=US",'new tab');
      },
        child:  n.maxWidth<n.maxHeight? SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(D.Hight10 *24),
                child: Container(
                  width: D.Hight10 *24,
                  height: D.Hight10 *18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight20),color: Colors.transparent

                  ),child: Image(image: NetworkImage("https://play-lh.googleusercontent.com/KB5ups6eh7KAVqhc0gf2otQ_PfsPEpH1pgEF3eapoek8-b37f77qtfVuV2zMmeDoKg=w240-h480-rw"),fit: BoxFit.fill,),

                ),
              ),
              SizedBox(width: D.Hight10,),
              SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  CustomText("", txt: "SpeedGet Application", txtSize: D.Hight20, clr: Colors.black, bold: true),
                  SizedBox(height: D.Hight10,),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: D.Hight10 *6.2,
                          height: D.Hight10 *2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(D.Hight10 *1.6),
                            color: Color(0xff142850),
                          ),child: Center(child: CustomText('', txt: "2022", txtSize: D.Hight10*1.5, clr: Colors.white, bold: false)),),
                        SizedBox(width: D.Hight10,),
                        CustomText("", txt: "Features", txtSize: D.Hight20/1.4, clr: Colors.blueGrey, bold: false)


                      ],),
                  ),
                  SizedBox(height: D.Hight10,),
                  CustomText("", txt: "~SpeedGet Driver Application For Cab Booking .\n~Google Map Intigration to fetch the live location of Cab. \n~Payment Gateway intigration (Razorpay)."
                      , txtSize: D.Hight10,clr: Colors.blueGrey, bold: false),
                  CustomText("", txt: "~REST Api Intigration and manage Live updates.\n~Fast User Authentication using Mobile OTP "
                      , txtSize: D.Hight10,clr: Colors.blueGrey, bold: false),
                ],),
              )
            ],),
        ):SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(D.Hight10 *24),
                child: Container(
                  width: D.Hight10 *24,
                  height: D.Hight10 *18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight20),color: Colors.transparent

                  ),child: Image(image: NetworkImage("https://play-lh.googleusercontent.com/KB5ups6eh7KAVqhc0gf2otQ_PfsPEpH1pgEF3eapoek8-b37f77qtfVuV2zMmeDoKg=w240-h480-rw"),fit: BoxFit.fill,),

                ),
              ),
              SizedBox(width: D.Hight10,),
              SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  CustomText("", txt: "SpeedGet Application", txtSize: D.Hight20, clr: Colors.black, bold: true),
                  SizedBox(height: D.Hight10,),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: D.Hight10 *6.2,
                          height: D.Hight10 *2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(D.Hight10 *1.6),
                            color: Color(0xff142850),
                          ),child: Center(child: CustomText('', txt: "2022", txtSize: D.Hight10*1.5, clr: Colors.white, bold: false)),),
                        SizedBox(width: D.Hight10,),
                        CustomText("", txt: "Features", txtSize: D.Hight20/1.4, clr: Colors.blueGrey, bold: false)


                      ],),
                  ),
                  SizedBox(height: D.Hight10,),
                  CustomText("", txt: "~SpeedGet Driver Application For Cab Booking .\n~Google Map Intigration to fetch the live location of Cab. \n~Payment Gateway intigration (Razorpay)."
                      , txtSize: D.Hight10,clr: Colors.blueGrey, bold: false),
                  CustomText("", txt: "~REST Api Intigration and manage Live updates.\n~Fast User Authentication using Mobile OTP "
                      , txtSize: D.Hight10,clr: Colors.blueGrey, bold: false),
                ],),
              )
            ],),
        ),
      ),
    ); },);
  }
}
