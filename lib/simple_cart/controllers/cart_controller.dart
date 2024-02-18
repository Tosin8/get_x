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
  Get.snackbar('Product Added',
   'You have added the ${product.name} to the cart', 
   snackPosition: SnackPosition.BOTTOM, 
   duration: Duration(seconds: 2), 
   ); 
}

// to be able to access the dictionary using the get method. 
get products => _products; 

// remove products
void removeProduct(Product product){
  if(_products.containsKey(product) && _products[product] == 1){
    // if(_products[product] == 1){
    //   _products.remove(product);
    // }
    _products.removeWhere((key, value) => key == product); 
  } else {
    _products[product] -= 1;
  }
}

// defining the sub total price. 

get productSubtotal => _products.entries
.map((product) => product.key.price * product.value)
.toList(); 

// defining the total price

get total => _products.entries
.map((product) => product.key.price * product.value)
.toList().reduce((value, element) => value + element)
.toStringAsFixed(2); 
}