import 'package:flutter/material.dart';
import 'package:watch_store/screen/mainScreen/basket_screen.dart';
import 'package:watch_store/screen/mainScreen/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

import 'home_screen.dart';


class ProductListScreen extends StatefulWidget {

  ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  @override
  Widget build(BuildContext context) {
    
    
    return  Scaffold(
      body:Center(child: Text("Product"))
    );
  }
}