import 'package:flutter/material.dart';
import 'package:watch_store/routs/names.dart';
import 'package:watch_store/screen/get_otp_screen.dart';
import 'package:watch_store/screen/mainScreen/Prodoct_list_screen.dart';
import 'package:watch_store/screen/mainScreen/Prodoct_single_screen%20.dart';
import 'package:watch_store/screen/mainScreen/main_screen.dart';
import 'package:watch_store/screen/register_screen.dart';
import 'package:watch_store/screen/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routs = {
  ScreenName.root: (context) => SendOtp(),
  ScreenName.getOtpScreen: (context) => GetOtp(),
  ScreenName.registerScreen: (context) => Register(),
  ScreenName.mainScreen: (context) => MainScreen(),
  ScreenName.productListScreen: (contexet) => ProductListScreen(),
  ScreenName.productSingleScreen: (contrxt) => ProductSingleScreen(),
};
