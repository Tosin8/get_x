import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../model/user.dart';
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
  Rx<UserModel> userModel = UserModel().obs; 

  @override
  void onReady(){
    super.onReady();
    firebaseUser = Rx<User>(auth.currentUser!);
    
    firebaseUser.bindStream(auth.userChanges().asBroadcastStream().cast<User>());//firebaseUser.bindStream(auth.userChanges().asBroadcastStream());
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
password: password.text.trim()).then((result) {
  String _userId = result.user!.uid; 
  _initializeUserMode(_userId);
}); 
    } catch(e){
      debugPrint(e.toString()); 
Get.snackbar('Sign In Failed', 'Try again'); 
    }
  }
  void signUp() async{ 
    try{
await auth.createUserWithEmailAndPassword(email: email.text.trim(), 
password: password.text.trim()).then((result) {
  String _userId = result.user!.uid; 
  _addUserToFirestore(_userId);
  _initializeUserMode(_userId);
  
}); 
    } catch(e){
      debugPrint(e.toString()); 
Get.snackbar('Sign In Failed', 'Try again'); 
    }
  }
  void signOut() async{ 
    auth.signOut();
  }

  // creating private method for adding user to the firestore. 
  _addUserToFirestore(String userId){
firebaseFirestore.collection(usersCollection).doc(userId).set({
    "name": name.text.trim(), 
    "id": userId, 
    "email": email.text.trim()
  }); 
  }

  // creating private method to initialize user model
_initializeUserMode(String userId) async {
  userModel.value = await firebaseFirestore
  .collection(usersCollection) 
  .doc(userId)
  .get()
  .then((doc) => UserModel.fromSnapshot(doc));
}
}