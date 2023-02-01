import 'package:flutter/material.dart';

class ShoppingCartProvider with ChangeNotifier {

  List<String> _shoppingCart = ['Ball', 'Bat', 'Glass', 'Vodka'];

  List<String> get cart => _shoppingCart;

  addItem(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
