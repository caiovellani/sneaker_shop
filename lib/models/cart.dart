import 'package:flutter/material.dart';

import '../src/core/constants/image_constants.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: ImageConstants.jordan,
      description: 'Line of basketball shoes produced by Nike',
    ),
    Shoe(
      name: 'Air Force',
      price: '190',
      imagePath: ImageConstants.airforce,
      description: 'Nike Air Force is a range of athletic shoes made by Nike',
    ),
    Shoe(
      name: 'Jordan Off-White Blue',
      price: '400',
      imagePath: ImageConstants.blue,
      description:
          'These Jordan 1s are the third colorway designed by Virgil Abloh and made in collaboration with his Off-White label.',
    ),
    Shoe(
      name: 'Nike Dunk',
      price: '250',
      imagePath: ImageConstants.dunk,
      description:
          'Originally released as a basketball shoe, the popularity of the shoe among the skating community also led to the creation of a variant used for skateboarding.',
    ),
    Shoe(
      name: 'Jordan Off-White Red',
      price: '500',
      imagePath: ImageConstants.red,
      description:
          'These Jordan 1s are the third colorway designed by Virgil Abloh and made in collaboration with his Off-White label.',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
