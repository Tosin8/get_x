import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_x/simple_cart/controllers/cart_controller.dart';
import 'package:get_x/simple_cart/controllers/product_controller.dart';

import 'model/product_model.dart';


class CatalogProducts extends StatelessWidget {
  // adding controller into the catalog product
  final productController = Get.put(ProductController());
  CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx( () =>

    // adding obx into it now to make it accessible from firebase. 
       Flexible(
        child: 
        ListView.builder(
          itemCount: productController.products.length,
        // itemCount: Product.products.length, 
          itemBuilder: ( context, index) {
         
            return CatalogProductCard(index: index,); 
          })),
    );
    
  }
}

class CatalogProductCard extends StatelessWidget {
  // the need to add the cart controller 
  final cartController = Get.put(CartController()); 
  final ProductController productController = Get.find(); 
  final int index; 
  CatalogProductCard({super.key,
   required this.index,  });

  @override
  Widget build(BuildContext context) {
    
    return Padding( 
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          CircleAvatar(radius: 40, 
          backgroundImage: AssetImage(
           // Product.products[index].imageUrl,
           productController.products[index].imageUrl
            
            ),
            ), 
            const SizedBox(width: 20,), 
            Expanded(
              child: Text(
productController.products[index].name ,
                //Product.products[index].name, 
                
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 15),)), 
            const SizedBox(width: 30,), 
            Expanded(
              child: Text(
               // '${Product.products[index].price}', 
               '${productController.products[index].price}',
                )
                ), 
            IconButton(
              onPressed: (){
                // cartController.addProduct(
                //   Product.products[index], 
                  cartController.addProduct(productController.products[index], 
                  );
              }, 
              icon: Icon(Icons.add_circle), 
              )
        ],
      ),
    );
  }
}