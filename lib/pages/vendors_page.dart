import 'package:flutter/material.dart';
import 'package:lanka_derana/models/vendor.dart';
import 'package:lanka_derana/pages/test.dart';
import 'package:lanka_derana/widgets/appvendors/vendor_card.dart';

class VendorsPage extends StatefulWidget {
  const VendorsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VendorsPageState();
  }
}

class _VendorsPageState extends State<VendorsPage> {
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
        actions: [
          TextButton.icon(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
            label: const Text('Filter Vendors'),
            style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 255, 230, 0))),
          ),
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
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
    );
  }
}
