import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';

class LightAppTextStyle{
  LightAppTextStyle._();
  static const TextStyle title=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.title
  );
    static const TextStyle hint=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.hint
  );
  static const TextStyle btmNavActivaite=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: LightAppColors.hint
  );
   static const TextStyle btmNavInActivaite=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: LightAppColors.hint
  );
  static const TextStyle PrimryTextStyle=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.focusedBorderColor
  );
  static const TextStyle PrimaryEditText=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.PrimryrColor
  );

}