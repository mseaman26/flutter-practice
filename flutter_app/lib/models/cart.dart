import 'package:flutter/material.dart';
import 'package:flutter_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        description: 'shoe1 is cool',
        name: 'shoe1',
        price: '400',
        imagePath: 'lib/images/shoe1.jpeg'
    ),
    Shoe(
        description: 'shoe2 is cool',
        name: 'shoe2',
        price: '400',
        imagePath: 'lib/images/shoe2.jpeg'
    ),
    Shoe(
        description: 'shoe3 is cool',
        name: 'shoe1',
        price: '400',
        imagePath: 'lib/images/shoe3.jpeg'
    ),
    Shoe(
        description: 'shoe4 is cool',
        name: 'shoe1',
        price: '400',
        imagePath: 'lib/images/shoe4.jpeg'
    ),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }


}