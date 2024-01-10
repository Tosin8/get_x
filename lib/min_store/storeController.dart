
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// the GetX controller class controls the state of the UI when wrapped an individual widget with its Observer,so that it only rebuilds when there is a change in the state of that particular widget. 
class StoreController extends GetxController{
  final storeName = 'Thick Shake'.obs; 

final followerCount = 0.obs; 
final storeStatus = true.obs; 
final followerList = [].obs; // list for names of store followers
final reviews = <StoreReviews>[].obs;  // map for names and their reviews for the store

// text editing controllers
final storeNameEditingController = TextEditingController(); 
final reviewEditingController = TextEditingController(); 
final followerController = TextEditingController(); 
final reviewNameController = TextEditingController(); 
}

// method for changing the name, increasing the follower count and changing the store status: 

updateStoreName(String name) {
  storeName(name); 
}

updateFollowerCount() {
  followerCount(followerCount.value + 1); 
}

void storeStatusOpen(bool isOpen){
  storeStatus(isOpen); 
}