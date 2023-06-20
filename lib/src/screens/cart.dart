import 'package:ecommerce_design/src/models/cart.dart';
import 'package:ecommerce_design/src/models/cart_item.dart';
import 'package:ecommerce_design/src/models/item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final Cart cart = Cart();
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
                subtitle: Text(item.price.toString()),
                trailing: Text(item.quantity.toString()),
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
