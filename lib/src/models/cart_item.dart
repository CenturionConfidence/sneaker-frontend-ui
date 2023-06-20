import 'package:ecommerce_design/src/models/cart.dart';

class Cart {
  List<CartItem> items = [];

  void addItem(CartItem item) {
    // Check if the item already exists in the cart
    //

    if (items.contains(item)) {
      // Item already exists, increase the quantity
      var existingItem = items.firstWhere(
        (element) => element.id == item.id,
      );
      CartItem(
        id: existingItem.id,
        name: existingItem.name,
        price: existingItem.price,
        quantity: existingItem.quantity + 1,
      );
    } else {
      // Item doesn't exist, add it to the cart

      items.add(item);
    }
  }

  void removeItem(String itemId) {
    items.removeWhere((item) => item.id == itemId);
  }

  double getTotalPrice() {
    return items.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  }
}
