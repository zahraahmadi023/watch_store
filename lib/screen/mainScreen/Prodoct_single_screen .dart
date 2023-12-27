import 'package:flutter/material.dart';
import 'package:watch_store/screen/mainScreen/basket_screen.dart';
import 'package:watch_store/screen/mainScreen/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

import 'home_screen.dart';


class ProductSingleScreen extends StatefulWidget {

  ProductSingleScreen({super.key});

  @override
  State<ProductSingleScreen> createState() => _ProductSingleScreenState();
}

class _ProductSingleScreenState extends State<ProductSingleScreen> {
 

  @override
  Widget build(BuildContext context) {
    
    
    return  Scaffold(
      body:Center(child: Text("Product single"))
    );
  }
}