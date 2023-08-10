import 'package:flutter/material.dart';
import 'package:lanka_derana/data/models/ad_post.dart';
import 'package:lanka_derana/data/models/product_model.dart';

class AdDetailsPage extends StatelessWidget {
  const AdDetailsPage({super.key, required this.adPost});

  final AdPost adPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'adPost.name',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the color of the back button here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'adPost.name',
              child: Image.asset(
                'assets/images/items/Nissan FB14.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'adPost.name',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  // Text(
                  //   'Posted on ${DateFormat('dd MMM yyyy HH:mm').format(product.createdDate)}',
                  //   style: Theme.of(context).textTheme.bodySmall,
                  // ),
                  const SizedBox(height: 2),
                  Text(
                    'Location of poster',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Colors.grey, // Customize the color of the line
                    thickness: 1.0, // Adjust the thickness of the line
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Rs  {adPost.price}',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'For sale by member *Member Name*',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Colors.grey, 
                    thickness: 1.0,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
