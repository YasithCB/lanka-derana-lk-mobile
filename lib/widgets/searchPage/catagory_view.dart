import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});
  
  final List<CategoryItem> categoryItems = [
    CategoryItem(
      imageUrl: 'assets/images/category1.png',
      title: 'Category 1',
    ),
    CategoryItem(
      imageUrl: 'assets/images/category2.png',
      title: 'Category 2',
    ),
    // Add more CategoryItems here
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        children: categoryItems.map((item) {
          return Column(
            children: [
              Image.asset(item.imageUrl),
              const SizedBox(height: 8.0),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        }).toList(),
      );
  }
}

class CategoryItem {
  final String imageUrl;
  final String title;

  CategoryItem({required this.imageUrl, required this.title});
}

void main() {
  runApp(MaterialApp(
    home: CategoryView(),
  ));
}
