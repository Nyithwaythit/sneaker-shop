import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK', 
      price: '236', 
      imagePath: 'lib/images/n2.png', 
      description: 'The forward thinking design for the latest signature shoe',
    ),
    Shoe(
      name: 'KD Treys',
       price: '240', 
       imagePath: 'lib/images/n3.png', 
       description: "A secure midfoot strap is suited for scoring binges and defensive ",
    ),
    Shoe(
      name: 'Kyries',
       price: '190', 
       imagePath: 'lib/images/n4.png', 
       description: "Bouncy cushioning is paired with soft yet supportive foam for rest"),

  ];


  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList() {
   return shoeShop;

  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart (Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
  
}