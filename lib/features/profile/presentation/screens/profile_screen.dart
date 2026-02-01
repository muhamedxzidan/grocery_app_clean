// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/features/auth/presentation/screens/categories_screen.dart';
import 'package:grocery_app_clean/features/profile/presentation/screens/favorite_screen.dart';
import 'package:grocery_app_clean/widgets/custom_card_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        elevation: 5,
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.shopping_bag,
          size: 40,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Profile is selected
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CategoriesScreen()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyFavorite()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Circle Avatar Section
                SizedBox(
                  height: 300.h,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 10.h,
                        child: CircleAvatar(
                          radius: 100.r,
                          backgroundColor:
                              const Color.fromARGB(255, 67, 240, 19),
                          backgroundImage:
                              const AssetImage("assets/images/fareees.png"),
                        ),
                      ),
                      Positioned(
                        top: 145.h,
                        left: 225.w,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.r,
                          child: Icon(
                            Icons.camera_enhance,
                            size: 30.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 230.h,
                        child: Text(
                          "Alyelsayed",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 265.h,
                        child: Text(
                          "ealy5550@gmail.com",
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      )
                    ],
                  ),
                ),
                // Menu Items
                Column(children: [
                  CustomCardProfile(
                    text: 'About Me',
                    icon: Icons.person,
                    navigateScreen: const Scaffold(
                        body: Center(child: Text("About Me"))), // Placeholder
                  ),
                  SizedBox(height: 6.h),
                  CustomCardProfile(
                    text: "My Orders",
                    icon: Icons.list_alt, // Better icon for orders
                    navigateScreen:
                        const Scaffold(body: Center(child: Text("My Orders"))),
                  ),
                  SizedBox(height: 8.h),
                  CustomCardProfile(
                    text: 'My Favorites',
                    icon: Icons.favorite,
                    navigateScreen: const MyFavorite(),
                  ),
                  SizedBox(height: 6.h),
                  CustomCardProfile(
                    text: "My Addresses",
                    icon: Icons.location_pin,
                    navigateScreen:
                        const Scaffold(body: Center(child: Text("Addresses"))),
                  ),
                  SizedBox(height: 8.h),
                  CustomCardProfile(
                    text: 'Credit Card',
                    icon: Icons.credit_card,
                    navigateScreen: const Scaffold(
                        body: Center(child: Text("Credit Card"))),
                  ),
                  SizedBox(height: 6.h),
                  CustomCardProfile(
                    text: "Notifications",
                    icon: Icons.notifications,
                    navigateScreen: const Scaffold(
                        body: Center(child: Text("Notifications"))),
                  ),
                  SizedBox(height: 8.h),
                  // Sign Out Button (Custom implementation or use Card)
                  SizedBox(
                      height: 60.h,
                      width: double.infinity,
                      child: Card(
                          color: AppColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.logout,
                                      size: 24.sp,
                                      color: AppColors.primary,
                                    )),
                              ),
                              Text(
                                "Sign Out",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.textBlack),
                              )
                            ],
                          )))
                ]),
              ],
            )),
      ),
    );
  }
}
