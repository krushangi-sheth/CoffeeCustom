import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    //black
   Coffee(name: 'Long Black',
        imagepath: "lib/img/black.png",
        price: "4.10"),

    //espresso
    Coffee(name: 'Espresso',
        imagepath: "lib/img/espresso.png",
        price: "3.50"),

    //latte
    Coffee(name: 'Latte',
        imagepath: "lib/img/latte.png",
        price: "4.20"),

    //iced
    Coffee(name: 'Iced Coffee',
        imagepath: "lib/img/iced.png",
        price: "4.50"),

  ];

  List<Coffee> _userCart = [];


  List<Coffee> get coffeeShop => _shop;


  List<Coffee> get userCart => _userCart;


  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
}

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
}
}