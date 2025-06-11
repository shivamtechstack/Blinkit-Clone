import 'package:flutter/cupertino.dart';

class UiHelper{
  static CustomImage({
    required String img
  }){
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontFamily,
    required double? fontSize,
  }){
    return Text(text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontweight,
          fontFamily: fontFamily??"regular"
      ),
    );
  }
}