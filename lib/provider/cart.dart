

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/home.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;
  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }
}