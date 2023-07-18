import 'package:flutter/material.dart';

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
            ],
          ),
        ],
    );
  }
}