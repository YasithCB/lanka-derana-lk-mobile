import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lanka_derana/widgets/homePage/item_card.dart';
import '../../providers/item_provider.dart';

class ItemView extends ConsumerWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);

    return Expanded(
      child: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: items.map((item) {
          return ItemCard(item: item);
        }).toList(),
      ),
    );
  }
}
