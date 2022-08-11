import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:html' as html;
import 'dart:js'as js;
import '../../Constants/Dimension.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Container(
      width: D.Hight10 *115.2,
      height: D.Hight10 *18.2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Social_Wid(path: "https://assets7.lottiefiles.com/packages/lf20_t1pu7jbg.json", url: "https://www.linkedin.com/in/nachiketa360/",

          ),
          Social_Wid(path: "https://assets4.lottiefiles.com/packages/lf20_86afyky0.json", url: "https://instagram.com/its_nacpa?igshid=YmMyMTA2M2Y=",),
          Social_Wid(path: "https://assets2.lottiefiles.com/packages/lf20_5mhyg2hz.json", url: "https://twitter.com/PCMNACHIKETA",),


        ],
      ),
    );
  }
}

class Social_Wid extends StatelessWidget {
   Social_Wid({Key? key,required this.path,required this.url}) : super(key: key);
   String path;
  String url;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(borderRadius: BorderRadius.circular(D.Hight100*10),
        child: GestureDetector(onTap: (){
          html.window.open(url, "new window");
        },
          child: Container(height: D.Hight30*1.5,width: D.Hight30*1.5,margin: EdgeInsets.all(D.Hight10),
            decoration: BoxDecoration(color: Colors.white),child:Lottie.network(path,fit: BoxFit.fill),),
        ),
      ),
    );
  }
}

