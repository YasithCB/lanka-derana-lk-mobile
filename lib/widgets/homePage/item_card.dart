import 'package:flutter/material.dart';
import 'package:lanka_derana/models/item.dart';

import '../../pages/item_details_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});

  final ProductItem item;

  @override
  Widget build(BuildContext context) {

    void selectItem() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ItemDetailsPage(item: item),
    ));
  }

    return GestureDetector(
      onTap: selectItem,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            item.price.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
          ),
        ],
      ),
    );
  }
}
