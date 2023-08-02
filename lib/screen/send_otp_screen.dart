import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/routs/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/button_main.dart';

class SendOtp extends StatelessWidget {
  TextEditingController _controller=TextEditingController();
  SendOtp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset("images/png/main_logo.png"),
            Dimens.lage.height,
            AppTextFeild(
              lable:AppStrings.enterYourNumber,
              hint: AppStrings.hintPhoneNumber,
              controller: _controller,
              ),
            
              MainButton(text: AppStrings.next, onPress: () => Navigator.pushNamed(context,ScreenName.getOtpScreen))
            
            
          
        ]),
      ),
    );
  }
}