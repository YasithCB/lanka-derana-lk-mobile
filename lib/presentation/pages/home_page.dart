import 'package:flutter/material.dart';
import 'package:lanka_derana/presentation/pages/vendors_page.dart';

import '../widgets/homePage/ad_post_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> adImageUrls = [
    'assets/images/items/JBL PARTY BOX.jpg',
    'assets/images/items/Vehicles for hire.jpg',
    'assets/images/items/RENT A CAR L 200 CAB.jpg',
    // Add more ad image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
                label: const Text('Location'),
              ),
            ),
            Expanded(
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.category),
                label: const Text('Categories'),
              ),
            ),
            Expanded(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VendorsPage(),
                      ));
                },
                icon: const Icon(Icons.manage_accounts),
                label: const Text('Vendors'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const ProductView(),
      ],
    );
  }
}
