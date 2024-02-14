import 'package:flutter/material.dart';

import 'catalogproduct.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(

        title: Text('Catalog')), 
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts(), 
            ElevatedButton(
              onPressed: (){},
             child: Text('Go to Cart'))],))
    );
  }
}