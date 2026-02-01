import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/features/profile/presentation/screens/favorite_screen.dart';
import 'package:grocery_app_clean/features/profile/presentation/screens/profile_screen.dart';
import 'package:grocery_app_clean/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Home is selected
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== Header (Back + Centered Title) =====
              SizedBox(
                height: 48.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.h),

              // ===== Categories Grid =====
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.w,
                  childAspectRatio: 0.7,
                  children: const [
                    CategoryItem(
                      title: "Pizza",
                      icon: Icons.local_pizza,
                      color: Colors.orange,
                    ),
                    CategoryItem(
                      title: "Burger",
                      icon: Icons.lunch_dining,
                      color: Colors.red,
                    ),
                    CategoryItem(
                      title: "Drinks",
                      icon: Icons.local_drink,
                      color: Colors.blue,
                    ),
                    CategoryItem(
                      title: "Dessert",
                      icon: Icons.icecream,
                      color: Colors.purple,
                    ),
                    CategoryItem(
                      title: "Coffee",
                      icon: Icons.coffee,
                      color: Colors.brown,
                    ),
                    CategoryItem(
                      title: "More",
                      icon: Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    CategoryItem(
                      title: "Salad",
                      icon: Icons.eco,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
