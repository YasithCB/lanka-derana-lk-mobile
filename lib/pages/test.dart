import 'package:flutter/material.dart';

class OrderSummaryWidget extends StatelessWidget {
  final String product;
  final double price;
  final double subtotal;
  final double total;

  OrderSummaryWidget({
    required this.product,
    required this.price,
    required this.subtotal,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: Text('Your Order'),
          ),
          Divider(),
          ListTile(
            title: Text('Product'),
            subtitle: Text(product),
            trailing: Text('රු${price.toStringAsFixed(2)}'),
          ),
          ListTile(
            title: Text('SUBTOTAL'),
            trailing: Text('රු${subtotal.toStringAsFixed(2)}'),
          ),
          ListTile(
            title: Text('TOTAL'),
            trailing: Text('රු${total.toStringAsFixed(2)}'),
          ),
        ],
      ),
    );
  }
}
