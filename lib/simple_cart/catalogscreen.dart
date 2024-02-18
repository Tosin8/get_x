
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cartscreen.dart';
import 'catalogproduct.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        centerTitle: true,
backgroundColor: Colors.blue,
        title: const Text('Catalog', 
        style: TextStyle(color: Colors.white),)), 
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,), 
            const CatalogProducts(), 
            ElevatedButton(
              onPressed: (){
                Get.to(() => const CartScreen());
                }, child: const Text('Go to Cart')),
        
           ]  )
             )
    );
  }
}