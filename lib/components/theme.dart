import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData lightThemeData() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: AppColors.PrimryrColor,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.focused)) {
              return AppColors.focusedBorderColor;
            } else {
              return AppColors.unFocusedBorderColor;
            }
          }),
          contentPadding: const EdgeInsets.all(Dimens.medium),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.medium),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.medium),
            borderSide: const BorderSide(color: AppColors.PrimryrColor),
          )));
}
