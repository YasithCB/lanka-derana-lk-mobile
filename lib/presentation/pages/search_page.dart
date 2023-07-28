import 'package:flutter/material.dart';

import '../../data/models/category.dart';
import '../widgets/searchPage/catagory_view.dart';
import '../widgets/searchPage/sub_categories_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    onSelectCategory(Category category) {
      // open sub categories
      Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategoriesView(category: category),));
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
