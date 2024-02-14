import 'package:flutter/material.dart';

import 'model/product_model.dart';


class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: 
      ListView.builder(
       itemCount: Product.products.length, 
        itemBuilder: ( context, index) {
       
          return CatalogProductCard(index: index,); 
        }));
    
  }
}

class CatalogProductCard extends StatelessWidget {
  final int index; 
  const CatalogProductCard({super.key, required this.index,  });

  @override
  Widget build(BuildContext context) {
    
    return Padding( 
      padding:  EdgeInsets.symmetric(horizontal: 20), 
      child: Row(
        children: [
          CircleAvatar(radius: 40, 
          backgroundImage: AssetImage(
            Product.products[index].imageUrl),)
        ],
      ),
    );
  }
}