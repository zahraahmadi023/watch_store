import 'package:flutter/material.dart';
import 'package:watch_store/screen/mainScreen/Prodoct_single_screen%20.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return   Container(
  
      color: Colors.yellow,
      child: Center(
        child: SizedBox(
          width:100,
          height: 100,
          child: ElevatedButton(onPressed:() =>Navigator.push(context, MaterialPageRoute(builder:(context) => ProductSingleScreen(),))
          , child: Text("مشاهده همه")),
        ),
      ),
      
    );
  }
}