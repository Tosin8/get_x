import 'package:get/get.dart';
import 'package:get_x/service/firestore_db.dart';

import '../model/product_model.dart';

// connecting it to database. 
class ProductController extends GetxController{
  // add a list of products objects. 

  final products = <Product>[].obs;

  @override 
  void onInit(){
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit(); 
  }
}