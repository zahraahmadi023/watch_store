import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/strings.dart';

import 'components/text_style.dart';

class SearchBtn extends StatelessWidget {
final VoidCallback OnTap;

  SearchBtn({
    required this.OnTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap:OnTap,
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: AppColors.appbar,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: AppColors.shadow,
                
              blurRadius: 3
            ),
          ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('images/svg1/search.svg'),
              const Text(AppStrings.searchProduct,style: LightAppTextStyle.hint,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("images/png/main_logo.png"),
              ),
      
      
            ],
      
          ),
          
              
          
        ),
      ),
    );
  }
}