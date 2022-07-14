import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  CustomText(
    this.FontFamily, {
    required this.txt,
    required this.txtSize,
    required this.clr,
    required this.bold,
  });
  String txt;
  double txtSize;
  Color clr;
  bool bold;
  String? FontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          color: clr,
          fontSize: txtSize,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          fontFamily: FontFamily),
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
    );
  }
}
