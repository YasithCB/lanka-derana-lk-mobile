import 'package:flutter/material.dart';
import 'package:lanka_derana/data/models/vendor.dart';

import '../widgets/appvendors/vendor_card.dart';

class VendorsPage extends StatefulWidget {
  const VendorsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VendorsPageState();
  }
}

class _VendorsPageState extends State<VendorsPage> {
  String _vendorName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vendors',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _vendorName = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Filter by vendor name',
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                TextButton.icon(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // ...
                  },
                  label: const Text('Filter Vendors'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color.fromARGB(255, 255, 230, 0))),
                ),
              ],
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.symmetric(vertical: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: [
                  VendorCard(vendor: Vendor(name: '1000school.Ict.Anu', rating: 0)),
                  VendorCard(vendor: Vendor(name: 'Aarya Hardware', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Abthul Wahid', rating: 5)),
                  VendorCard(vendor: Vendor(name: 'Acapital.Lands', rating: 4)),
                  VendorCard(
                      vendor: Vendor(name: 'Aclankaengineeringservic', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Affanariffma', rating: 1)),
                  VendorCard(vendor: Vendor(name: 'Aarya Hardware', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Abthul Wahid', rating: 5)),
                  VendorCard(vendor: Vendor(name: 'Acapital.Lands', rating: 4)),
                  VendorCard(
                      vendor: Vendor(name: 'Aclankaengineeringservic', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Affanariffma', rating: 1)),
                  VendorCard(vendor: Vendor(name: 'Aarya Hardware', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Abthul Wahid', rating: 5)),
                  VendorCard(vendor: Vendor(name: 'Acapital.Lands', rating: 4)),
                  VendorCard(
                      vendor: Vendor(name: 'Aclankaengineeringservic', rating: 2)),
                  VendorCard(vendor: Vendor(name: 'Affanariffma', rating: 1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
