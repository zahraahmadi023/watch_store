import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset("images/png/avatar.png"),
        
        ),
        Dimens.medium.height,
        Text(AppStrings.chooseProfileImage,style: LightAppTextStyle.title,),
        


      ]);
  }
}