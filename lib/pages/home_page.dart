import 'package:flutter/material.dart';
import 'package:lanka_derana/pages/vendors_page.dart';

import '../widgets/homePage/item_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const SizedBox(width: 6),
            Text(
              '|',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.category_sharp),
                label: const Text('Catagory'),
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VendorsPage(),
                      ));
                },
                icon: const Icon(Icons.man),
                label: const Text('Venders'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const ItemView(),
      ],
    );
  }
}
