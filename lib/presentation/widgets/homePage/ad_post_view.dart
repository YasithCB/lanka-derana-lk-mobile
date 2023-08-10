import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lanka_derana/data/dataProviders/ad_post_provider.dart';
import 'package:lanka_derana/data/models/ad_post.dart';
import 'package:lanka_derana/presentation/widgets/homePage/ad_post_card.dart';

class ProductView extends ConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<AdPost>> adPosts = ref.watch(adPostProvider);

    return adPosts.when(
      data: (adPostList) {
        return Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 0.65,
            ),
            itemCount: adPostList.length,
            itemBuilder: (context, index) {
              return AdPostCard(adPost: adPostList[index]);
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
