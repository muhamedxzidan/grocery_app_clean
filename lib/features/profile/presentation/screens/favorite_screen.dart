import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/features/auth/presentation/screens/categories_screen.dart';
import 'package:grocery_app_clean/features/profile/presentation/screens/profile_screen.dart';
import 'package:grocery_app_clean/widgets/custom_card_favorite.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Favorite is selected
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CategoriesScreen()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        toolbarHeight: 100.h,
        title: Text(
          "Favorite",
          style: TextStyle(fontSize: 30.sp, color: AppColors.textDark),
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const CustomCardFavorite(
              price: '\$10x4',
              productname: 'Brokli',
              weight: '1kg',
              prodimg: "assets/images/brokli.jpg",
            ),
            SizedBox(height: 10.h),
            const CustomCardFavorite(
              price: '\$15x4',
              productname: 'avacado',
              weight: '2kg',
              prodimg: "assets/images/avacado.jpg",
            ),
            SizedBox(height: 10.h),
            const CustomCardFavorite(
              price: '\$8x4',
              productname: 'strawberry',
              weight: '1.5kg',
              prodimg: "assets/images/straw.jpg",
            ),
            SizedBox(height: 10.h),
            const CustomCardFavorite(
              price: '\$12x4  ',
              productname: 'pinapple',
              weight: 'dozan',
              prodimg: "assets/images/pinapple.jpg",
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
