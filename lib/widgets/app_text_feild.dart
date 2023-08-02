import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';

class AppTextFeild extends StatelessWidget {
  final String lable;
  final String perfixLable;
  final String hint;
  TextEditingController controller;
  final Widget icons;
  final TextAlign textAlign;
  TextInputType? inputType;
  AppTextFeild({required this.lable,
  this.perfixLable='',
  required this.hint,
  required this.controller,
  this.icons=const SizedBox(),
  this.textAlign=TextAlign.center,
  this.inputType
  });

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.all(Dimens.small),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: size.width*0.75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(perfixLable,style: LightAppTextStyle.title,),
              Text(lable,style: LightAppTextStyle.title),
              
            ],
          ),
        ),
        Dimens.medium.height,
        SizedBox(
          height: size.height*0.07,
          width: size.width*0.75,
          child: TextField(
            textAlign: textAlign,
            controller: controller,
            keyboardType: inputType,
            decoration: InputDecoration(
              hintStyle: LightAppTextStyle.hint,
              hintText: hint,
              prefixIcon: icons
            ),
          ),
        )


    ]),
    );
    
  }
}