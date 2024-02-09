import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../home.dart';
import '../constants/firebase.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User> firebaseUser; 
  RxBool isLoggedIn = false.obs; 

  @override
  void onReady(){
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser!);
    firebaseUser.bindStream(auth.userChanges());
    _setInitialScreen(); 
  }

  _setInitialScreen() {
    if(!isLoggedIn.value){
      Get.offAll(() => AuthenticationScreen()); 
    } else {
      Get.offAll(() => HomeScreen());
    }
  }
}