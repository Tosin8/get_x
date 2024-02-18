import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/simple_cart/controllers/cart_controller.dart';

import '../model/product_model.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find(); 
CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 600, 
      child: ListView.builder(
        itemCount: controller.products.length, 
      itemBuilder: (BuildContext context, int index) {
        return  CartProductCard(index: index,
         controller: controller, 
         product: controller.products.keys.toList()[index], 
         quantity: controller.products.values.toList()[index] ,); 
      },),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller; 
  final Product product; 
  final int quantity; 
  final int index; 
   const CartProductCard({super.key, 
  required this.controller, 
   required this.product, 
   required this.quantity,
    required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.symmetric(horizontal: 20.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          CircleAvatar(radius: 40,backgroundImage: AssetImage(product.imageUrl),), 
        ],
      ),
    );
  }
}