import 'package:get/get.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  RxBool isLoggedIn = false.obs; 

  @override
  void onReady(){
    super.onReady();
    _setInitialScreen(); 
  }
}