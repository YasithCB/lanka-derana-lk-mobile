import 'package:flutter/material.dart';
import 'package:lanka_derana/widgets/searchPage/catagory_view.dart';

import '../models/category.dart';
import '../widgets/posting_ad_pageviews/after_select_category.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    onSelectCategory(CategoryItem item) {
      
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'What are you looking for',
              suffixIcon: Container(
                width: 48.0,
                height: 48.0,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    // Perform search action
                  },
                ),
              ),
            ),
          ),
        ),
        CategoryView(onTapCategory: onSelectCategory),
      ],
    );
  }
}
