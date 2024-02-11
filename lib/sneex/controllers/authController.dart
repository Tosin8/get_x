import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../screens/authentication/authenticaton.dart';
import '../screens/home.dart';
import '../constants/firebase.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User> firebaseUser; 
  RxBool isLoggedIn = false.obs; 
  // adding editing controllers 
  TextEditingController name = TextEditingController(); 
  TextEditingController email = TextEditingController(); 
  TextEditingController password = TextEditingController(); 
  String usersCollection = 'users'; 

  @override
  void onReady(){
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser!);
    
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen); 
  }

  _setInitialScreen(User user) {
    if(user == null){
      Get.offAll(() => AuthenticationScreen()); 
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }
  void signIn() async{ 
    try{
await auth.signInWithEmailAndPassword(email: email.text.trim(), 
password: password.text.trim()); 
    } catch(e){
      debugPrint(e.toString()); 
Get.snackbar('Sign In Failed', 'Try again'); 
    }
  }
  void signUp() async{ 
    try{
await auth.createUserWithEmailAndPassword(email: email.text.trim(), 
password: password.text.trim()).then((result) {
  firebaseFirestore.collection(usersCollection); 
}); 
    } catch(e){
      debugPrint(e.toString()); 
Get.snackbar('Sign In Failed', 'Try again'); 
    }
  }
  void signOut() async{ 
    auth.signOut();
  }
}