
import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/strings.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSize {
  const RegisterAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
    preferredSize:Size(size.width,size.height*1),
    child:Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed:() {
              Navigator.pop(context);
              
            }, icon: Icon(Icons.arrow_back)),
            Text(AppStrings.register,style: LightAppTextStyle.title,),
          ],
        ),
      ),
    )

    );
  }
  

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height*.1);
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}