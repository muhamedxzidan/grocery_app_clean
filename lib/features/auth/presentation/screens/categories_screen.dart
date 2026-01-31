import 'package:flutter/material.dart';
import 'package:grocery_app_new/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== Header (Back + Centered Title) =====
              SizedBox(
                height: 48,
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
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ===== Categories Grid =====
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9,
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
