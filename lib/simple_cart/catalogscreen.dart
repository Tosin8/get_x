
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

        title: const Text('Catalog')), 
      body: SafeArea(
        child: Column(
          children: [
            const CatalogProducts(), 
            ElevatedButton(
              onPressed: () => Get.to(() => const CartScreen()), 
             child: const Text('Go to Cart'))],))
    );
  }
}