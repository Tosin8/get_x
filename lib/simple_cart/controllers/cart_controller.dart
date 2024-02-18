import 'package:get/get.dart';

import '../model/product_model.dart';

class CartController extends GetxController{
// add a dictionary to store the products in the cart
var _products = {}.obs;  // obs makes to observe the variable from another screen. 

// adding products and using key to check if the product is already in the cart ( in the dictionary)
void addProduct(Product product){
  if(_products.containsKey(product)){
    _products[product] += 1; 
  } else {
    _products[product] = 1; 
  }
}
}