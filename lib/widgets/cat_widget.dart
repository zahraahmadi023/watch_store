import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';

class CatWidgets extends StatelessWidget {
  final String title;
  final String  iconPath;
  final List<Color>  colors;
  final VoidCallback onTap;

  const CatWidgets({
    required this.colors,
    required this.iconPath,
    required this.title,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
          height:size.height*.1,
          width:size.height*.1,
    
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: colors,begin: Alignment.topCenter,end: Alignment.bottomCenter),
            ),
            child:SvgPicture.asset(iconPath),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Text(title, style: LightAppTextStyle.title,),
          ),
        ],
      ),
    );
  }
}




