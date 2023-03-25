import 'package:flutter/material.dart';

class Pallet {
  static const Color backgroundColor = Color(0xffcccccc);
  static const Color appRed = Color(0xffe50000);
  static const Color appTextBlack = Colors.black;
  static const Color appTextWhite = Colors.white;
  // static Color appRed = Color(0xff046a49);
  static const Color appGrey = Color(0xff7f7f7f);
  static const Color appYellow = Color(0xfffaecc1);
  static const LinearGradient appGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xffe50000),
      Color(0xffe50000),
    ],
  );
}
