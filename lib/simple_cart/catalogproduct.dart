import 'package:flutter/material.dart';

import 'model/product_model.dart';
import 'model/product_model.dart';

class CatalogProducts extends StatefulWidget {
  const CatalogProducts({super.key});

  @override
  State<CatalogProducts> createState() => _CatalogProductsState();
}

class _CatalogProductsState extends State<CatalogProducts> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: 
      ListView.builder(
        itemCount: Product.products.lenth, 
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(); 
        }));
    
  }
}

class CatalogProductCard extends StatelessWidget {
  const CatalogProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}