import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      padding:  const EdgeInsets.symmetric(horizontal: 20), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          CircleAvatar(radius: 40, 
          backgroundImage: AssetImage(
            Product.products[index].imageUrl),), 
            const SizedBox(width: 20,), 
            Expanded(child: Text(Product.products[index].name, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w800),)), 
            const SizedBox(width: 30,), 
            Expanded(child: Text('${Product.products[index].price}'))
        ],
      ),
    );
  }
}