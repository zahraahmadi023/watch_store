import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';

class LightAppTextStyle{
  LightAppTextStyle._();
  static const TextStyle title=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.title
  );
  static const TextStyle timeTxt=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 13,
    color: Colors.blue
  );
    static const TextStyle hint=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.hint
  );
   static const TextStyle titlPrc=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.hint,
    decoration: TextDecoration.lineThrough
  );
  static const TextStyle btmNavActivaite=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: AppColors.hint
  );
  static const TextStyle btmNavInActivaite=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: AppColors.hint
  );
  static const TextStyle PrimryTextStyle=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.focusedBorderColor
  );
  static const TextStyle PrimaryEditText=TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: AppColors.PrimryrColor
  );

}