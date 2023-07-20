import 'package:flutter/material.dart';
import 'package:lanka_derana/models/category.dart';
import 'package:lanka_derana/widgets/posting_ad_pageviews/after_select_category.dart';
import 'package:lanka_derana/widgets/searchPage/catagory_view.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  onSelectCategory(CategoryItem item) {
    // print(item.title);
    Navigator.push(context, MaterialPageRoute(builder: (context) => AfterSelectCategory(item: item),));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Text(
            'Select a category first',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        CategoryView(onTapCategory: onSelectCategory)
      ],
    );
  }
}
