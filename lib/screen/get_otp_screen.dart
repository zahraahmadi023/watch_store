import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/routs/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/button_main.dart';

class GetOtp extends StatelessWidget {
  TextEditingController _controller=TextEditingController();
  GetOtp({super.key});

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
            
            Dimens.medium.height,
            Text(AppStrings.otpCodeSendFor.replaceAll(AppStrings.replace, "0991255555",),style: LightAppTextStyle.title,),
            Dimens.small.height,
            const Text(AppStrings.wrongNumberEditNumber,style: LightAppTextStyle.PrimaryEditText,),

            Dimens.lage.height,
            AppTextFeild(
              perfixLable: '2:56',
              lable:AppStrings.enterYourNumber,
              
              hint: AppStrings.hintPhoneNumber,

              controller: _controller,
              ),
            
              MainButton(text: AppStrings.next, onPress:() => Navigator.pushNamed(context,ScreenName.registerScreen)),
            
            
          
        ]),
      ),
    );
  }
}