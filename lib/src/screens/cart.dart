import 'package:ecommerce_design/src/models/cart_item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final Cart cart = Cart();

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          // Display cart items
          ListView.builder(
            shrinkWrap: true,
            itemCount: cart.items.length,
            itemBuilder: (ctx, index) {
              var item = cart.items[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('Price: \$${item.price}'),
                trailing: Text('Quantity: ${item.quantity}'),
              );
            },
          ),
          // Display total price
          Text('Total: \$${cart.getTotalPrice()}'),
        ],
      ),
    );
  }
}
