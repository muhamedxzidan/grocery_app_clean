

// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:grocery_app_new/core/theme/app_colors.dart';


class AppCustomcard extends StatelessWidget {
 final  String title; 
 final IconData icon;
 void Function()? onPressed;
   AppCustomcard({super.key,required this.title,required this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(height:65 ,width: double.infinity,
      child: Card(
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row( children: [
                            Icon(icon,size: 40,color: AppColors.primary,),
                            SizedBox(width: 10,),
                            Text(title,style: TextStyle(fontSize: 22,color:AppColors.black),) ],
                        ),
                        IconButton(onPressed: onPressed
                          
                        ,icon: Icon(Icons.arrow_forward_ios,color:Colors.black,size: 20, ))
                                
                                 ])),
    );
  }
}