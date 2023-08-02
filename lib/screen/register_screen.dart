import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/routs/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/button_main.dart';
import 'package:watch_store/widgets/registration_appBar.dart';

class Register extends StatelessWidget {
  TextEditingController _controllerRegister=TextEditingController();
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: RegisterAppBar(size: size),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Dimens.medium.height,

                Avatar(),
                Dimens.small.height,

                AppTextFeild(
                  lable:AppStrings.nameLastName,
                  hint: AppStrings.hintNameLastName,
                  controller: _controllerRegister,
                  
                  ),
                  AppTextFeild(
                  
                  lable:AppStrings.homeNumber,
                  hint: AppStrings.hintHomeNumber,
                  controller: _controllerRegister,
                  
                  ),
                  AppTextFeild(
                  
                  lable:AppStrings.enterYourNumber,
                  hint: AppStrings.hintPhoneNumber,
                  controller: _controllerRegister,
                  
                  ),
                  AppTextFeild(
                  
                  lable:AppStrings.address,
                  hint: AppStrings.hintAddress,
                  controller: _controllerRegister,
                  
                  ),
                  AppTextFeild(
                  
                  lable:AppStrings.postalCode,
                  hint: AppStrings.hintPostalCode,
                  controller: _controllerRegister,
                  
                  ),
                  AppTextFeild(
                  
                  lable:AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: _controllerRegister,
                  icons: Icon(Icons.location_on)
                  
                  ),
                  MainButton(onPress: () =>Navigator.pushNamed(context,ScreenName.mainScreen)
                  , text: 'ادامه ',),
                  Dimens.lage.height,
                  
              ],
            ),
          ),
        ),));
  }
}
