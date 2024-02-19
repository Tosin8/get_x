// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name; 
  final double price; 
  final String imageUrl; 
  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

// calling from firebase 
static Product fromSnapshot(DocumentSnapshot snap) {
  Product product = Product(
    name: snap['name'],
    price: snap['price'],
    imageUrl: snap['imageUrl'],
  );
  return product;
}

//      static List<Product> products = [
  
//   Product(
//     name: 'Food',
//      price: 2.99, 
//      imageUrl: 'assets/image/1.png'
//      ), 
//        Product(
//     name: 'Apple',
//      price: 1.99, 
//      imageUrl: 'assets/image/2.png'), 
//        Product(
//     name: 'Grape',
//      price:6.11, 
//      imageUrl: 'assets/image/3.png'), 
//        Product(
//     name: 'Tomato',
//      price: 2.99, 
//      imageUrl: 'assets/image/4.png'), 
// ]; 
}