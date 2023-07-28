import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lanka_derana/data/models/item.dart';

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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  child: Image.asset(
                    item.imageUrl1,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600, color: Colors.black54),
              ),
              const SizedBox(height: 6),
              Text(
                'Rs ${item.price}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              
              Text(
                DateFormat('dd MMM yyyy HH:mm').format(item.createdDate),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black45
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
