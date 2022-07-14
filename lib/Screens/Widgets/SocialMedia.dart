import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Container(
            width: D.Hight10 *115.2,
            height: D.Hight10 *18.2,
            color: Colors.white,
            child: Stack(
              children:[
                Positioned(
                  left: D.Hight10 *45.9,
                  top: D.Hight10 *5.1,
                  child: Container(
                    width: D.Hight10 *3.0,
                    height: D.Hight10 *3.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight10 ),
                      color: Color(0xff21243d),
                    ),
                  ),
                ),
                Positioned(
                  left: D.Hight10 *66.1,
                  top: D.Hight10 *5.1,
                  child: Container(
                    width: D.Hight10 *3.0,
                    height: D.Hight10 *3.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight10 ),
                      color: Color(0xff21243d),
                    ),
                  ),
                ),
                Positioned(
                  left: D.Hight10 *58.9,
                  top: D.Hight10 *5.1,
                  child: Container(
                    width: D.Hight10 *3.692,
                    height: D.Hight10 *3.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight10 ),
                      color: Color(0xff21243d),
                    ),
                  ),
                ),
                Positioned(
                  left: D.Hight10 *52.4,
                  top: D.Hight10 *5.1,
                  child: Container(
                    width: D.Hight10 *3.0,
                    height: D.Hight10 *3.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(D.Hight10 ),
                    ),
                    child: FlutterLogo(size: D.Hight10 *3.0),
                  ),
                ),
                Positioned(
                  left: D.Hight10 *46.4,
                  top: D.Hight10 *10.7,
                  child: Text(
                    "Copyright ©2020 All rights reserved ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff21243d),
                      fontSize: D.Hight10 *1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
