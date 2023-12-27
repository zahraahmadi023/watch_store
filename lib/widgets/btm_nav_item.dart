import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';

class btmNavItem extends StatelessWidget {
  String iconSvgPath;
  String text;
  bool isActive;
  void Function() onTap;

    btmNavItem({
      required this.iconSvgPath,
      required this.text,
      required this.isActive,
      required this.onTap
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconSvgPath,color: isActive?AppColors.btmNavActivaite:AppColors.btmNavInActivaite,),
            //Icon(Icons.home_outlined, size: 30,),
            const SizedBox(height: 5,),
            Text(text,style:LightAppTextStyle.btmNavActivaite,
            // color: isActive?LightAppColors.btmNavActivaite:LightAppColors.btmNavInActivaite,
            ),

          ],
        ),
      ),
    );
  }
}