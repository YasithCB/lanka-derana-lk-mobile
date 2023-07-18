import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/category_provider.dart';

class CategoryView extends ConsumerWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.read(categoryProvider);

    return Expanded(
      child: GridView(
        padding: const EdgeInsets.all(35),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // childAspectRatio: 2 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categoryList.map((item) {
          return Column(
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(item.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          );
        }).toList(),
      ),
    );
  }
}
