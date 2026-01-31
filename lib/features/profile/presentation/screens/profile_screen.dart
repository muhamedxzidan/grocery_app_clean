// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:grocery_app_new/core/theme/app_colors.dart';
import 'package:grocery_app_new/features/profile/presentation/screens/favorite_screen.dart';
import 'package:grocery_app_new/widgets/custom_card_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(

      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
      elevation:5, 
        
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Positioned(child: Icon(Icons.shopping_bag,size: 40,color: Colors.white,)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"profile"),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"favorite"),
                
      

      ]),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [//circle avatar+ camrer+2text
              Center(
                child: Container(height: 300,width: double.maxFinite,
                  child: Stack(
                    children: [
                           Positioned(top:10,left:100,
                           child: CircleAvatar(radius: 100,backgroundColor: const Color.fromARGB(255, 67, 240, 19),
                           backgroundImage: AssetImage("assets/images/fareees.png"),),),
                          Positioned(top:145,left:225,
                            child: IconButton(onPressed: (){},
                             icon:Icon(Icons.camera_enhance,size: 60,color: AppColors.primary,)),
                          ),
                      SizedBox(height: 10,),
                       Positioned(top:230,left: 150,child: Text("Alyelsayed",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 10,),
                      Positioned(top:265,left: 100,child: Text("ealy5550@gmail.com",style: TextStyle(fontSize: 18),))
                    ],
                  ),
                ),
              ),
              //pages profile favorite 
         Column(
                children: [
                  
                    
                    AppCustomcard(title: 'Aout Me', icon:Icons.person,),
               SizedBox(height: 6,), 
                 AppCustomcard(title: "My Orders", icon: Icons.rectangle_outlined),
                 SizedBox(height: 8,),
                 AppCustomcard(title: 'My Favorites', icon:Icons.favorite,
                 onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavorite()));
                 },
                 ),
               SizedBox(height: 6,), 
                 AppCustomcard(title: "My Addresses", icon: Icons.location_pin),
                 SizedBox(height: 8,),AppCustomcard(title: 'Credit Card', icon:Icons.credit_card,),
               SizedBox(height: 6,), 
                 AppCustomcard(title: "Notifications", icon: Icons.notifications),
                  SizedBox(height: 8,),
                   Container(height:65 ,width: double.infinity,
        child: Card(
                     child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        
                        children: [
                              RotatedBox(quarterTurns: 2,
                              child: Icon(Icons.logout,size: 40,color: AppColors.primary,)),
                              SizedBox(width: 10,),
                              Text("Sign Out",
                              style: TextStyle(fontSize: 22,color:AppColors.black),) ],
                )
                )
                )]
                ),
               
              ],
          )
        ),
      ),
    );
   
  }}









               
              
              
              
              
              
              
              
              
              









              
             
           
           
        
           
        
            

            
     








      
     
    
        
    
  