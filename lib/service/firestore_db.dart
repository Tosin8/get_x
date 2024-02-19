import 'package:cloud_firestore/cloud_firestore.dart';

import '../simple_cart/model/product_model.dart';

class FirestoreDB {
  // initialize firebase cloud firestore. 

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

Stream<List<Product>> getAllProducts() {
  return _firebaseFirestore
  .collection('products')
  .snapshots() 
  .map((snapshot) {
    return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList(); 
  }); 
}
}