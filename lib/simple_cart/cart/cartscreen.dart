import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_products.dart';
import 'cart_total.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, 
           icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('My Cart', style: TextStyle(color: Colors.white),
        
        ),
      ),
      body: Column(
        children: [
          CartProducts(), 
          CartTotal(), 
        ],
      ),
    );
  }
}