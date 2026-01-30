// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grocery_app_new/core/theme/app_colors.dart';


class CustomCardFavorite extends StatefulWidget {
String price,productname,weight,prodimg;
  
 CustomCardFavorite({super.key,required this.price,required this.productname,
 required this.weight,required this.prodimg});

  @override
  State<CustomCardFavorite> createState() => _CustomCardFavoriteState();
}

class _CustomCardFavoriteState extends State<CustomCardFavorite> {

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
setState(() {
  
});
    },
      child: Card(color: AppColors.white,
        child: 
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,children: [
           CircleAvatar(radius: 50,
           backgroundImage: AssetImage(widget.prodimg),),
           SizedBox(width: 50,),
          Column(
            children: [Text(widget.price,
            style: TextStyle(fontSize: 20,color:AppColors.primary,)),
          
            SizedBox(height: 10,),
            Text(widget.productname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
            Text(widget.weight)
            ],
          ),
         ] 
        
        
        ),
       
      
        Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.add,size: 30,color: AppColors.primary,)),
            Text("22",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            IconButton(onPressed: (){}, icon:Icon(Icons.remove,size: 30,color: AppColors.primary,)),
            ],
          )
          ]
          ) 
      
      ),
    );
  }
}