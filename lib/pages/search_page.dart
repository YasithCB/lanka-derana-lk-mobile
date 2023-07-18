import 'package:flutter/material.dart';
import 'package:lanka_derana/widgets/searchPage/catagory_view.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryItem> categoryItems = [
      CategoryItem(
        imageUrl: 'assets/images/categories/iphone.png',
        title: 'Electronics',
      ),
      CategoryItem(
        imageUrl: 'assets/images/categories/car1.png',
        title: 'Vehicles',
      ),
      CategoryItem(
        imageUrl: 'assets/images/categories/iphone.png',
        title: 'Electronics',
      ),
      CategoryItem(
        imageUrl: 'assets/images/categories/car1.png',
        title: 'Vehicles',
      ),
      CategoryItem(
        imageUrl: 'assets/images/categories/iphone.png',
        title: 'Electronics',
      ),
      CategoryItem(
        imageUrl: 'assets/images/categories/car1.png',
        title: 'Vehicles',
      )
      // Add more CategoryItems here
    ];

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
        Expanded(
          child: GridView(
            padding: const EdgeInsets.all(30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              // childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            children: categoryItems.map((item) {
              return Column(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.bodyMedium
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
