import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/text_style.dart';

class MainButton extends StatelessWidget {
  final String text;
    final Function() onPress;
  const MainButton({required this.text,required this.onPress});

  @override
  Widget build(BuildContext context) {
    

    Size size=MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*0.07,
      width: size.width*0.75,
      child: ElevatedButton(
        style: AppButtonStyle.mainButtonStyle,
        onPressed: onPress,
        child: Text(text,style: LightAppTextStyle.PrimryTextStyle,),),
    );
  }
}