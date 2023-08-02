import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData lightThemeData(){
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    primaryColor:LightAppColors.PrimryrColor,
    scaffoldBackgroundColor: LightAppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled:true,
      fillColor: MaterialStateColor.resolveWith((states){
        if(states.contains(MaterialState.focused)){
          return LightAppColors.focusedBorderColor;
        
        }else{
          return LightAppColors.unFocusedBorderColor;
        }
      } ),
      contentPadding: EdgeInsets.all(Dimens.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: LightAppColors.borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: LightAppColors.PrimryrColor),
    )
    )
  );
    
  
}