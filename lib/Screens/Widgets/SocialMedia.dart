import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:html' as html;
import '../../Constants/Dimension.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

void SocilLinks(String url){
  html.window.open(url,'new tab');
}
    return Container(
      width: D.Hight10 *115.2,
      height: D.Hight10 *18.2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Social_Wid(path: "https://assets2.lottiefiles.com/private_files/lf30_03cuemhb.json", onTap: (){}),
          Social_Wid(path: "https://assets7.lottiefiles.com/packages/lf20_t1pu7jbg.json", onTap: (){}),
          Social_Wid(path: "https://assets4.lottiefiles.com/packages/lf20_86afyky0.json", onTap: (){}),

          Social_Wid(path: "https://assets2.lottiefiles.com/packages/lf20_5mhyg2hz.json", onTap: (){}),


        ],
      ),
    );
  }
}

class Social_Wid extends StatelessWidget {
   Social_Wid({required this.path,required this.onTap
  }) ;
   String path;
   Function onTap;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(D.Hight30*10),
      child: GestureDetector(onTap: onTap(),
        child: Container(height: D.Hight30*2,width: D.Hight30*2,margin: EdgeInsets.all(D.Hight10),
          decoration: BoxDecoration(color: Colors.white),child:Lottie.network(path),),
      ),
    );
  }
}
