import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../screens/authentication/authenticaton.dart';
import '../screens/home.dart';
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
    ever(firebaseUser, _setInitialScreen as WorkerCallback<User>); 
  }

  _setInitialScreen(User user) {
    if(user == null){
      Get.offAll(() => AuthenticationScreen()); 
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }
}