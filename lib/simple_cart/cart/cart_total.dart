import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/simple_cart/controllers/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
   CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Total', 
          style: TextStyle(fontSize: 24,
           fontWeight: FontWeight.bold),),  Text('Total', 
          style: TextStyle(fontSize: 24,
           fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}