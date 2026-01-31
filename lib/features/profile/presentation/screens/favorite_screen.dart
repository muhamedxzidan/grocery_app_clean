// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:math';

import 'package:flutter/material.dart';

import 'package:grocery_app_new/core/theme/app_colors.dart';
import 'package:grocery_app_new/widgets/custom_card_favorite.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,backgroundColor: AppColors.background,toolbarHeight:100 ,
          title: Text("Favorite",style: TextStyle(fontSize: 30,color: AppColors.textDark),),elevation: 1,
        ),
        body:
        Column(
          children: [
            CustomCardFavorite(price: '\$10x4', productname: 'Brokli', weight: '1kg',prodimg: "assets/images/brokli.jpg",),
            SizedBox(height: 10,),
             CustomCardFavorite(price: '\$15x4', productname: 'avacado', weight: '2kg',prodimg:"assets/images/avacado.jpg" ,),
            SizedBox(height: 10,),
             CustomCardFavorite(price: '\$8x4', productname: 'strawberry', weight: '1.5kg', prodimg: "assets/images/straw.jpg",),
            SizedBox(height: 10,),
             CustomCardFavorite(price: '\$12x4  ', productname: 'pinapple', weight: 'dozan', prodimg: "assets/images/pinapple.jpg",),
            SizedBox(height: 10,),
          
        ]
        ),
        ),);  
   
  }
}