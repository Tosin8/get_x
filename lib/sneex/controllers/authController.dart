// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_x/sneex/utils/helpers/showLoading.dart';
// import 'package:logger/logger.dart';

// import '../model/user.dart';
// import '../screens/authentication/authenticaton.dart';
// import '../screens/home.dart';
// import '../constants/firebase.dart';

// class AuthController extends GetxController{
//   static AuthController instance = Get.find();
//   late Rx<User> firebaseUser; 
//   RxBool isLoggedIn = false.obs; 
//   // adding editing controllers 
//   TextEditingController name = TextEditingController(); 
//   TextEditingController email = TextEditingController(); 
//   TextEditingController password = TextEditingController(); 
//   String usersCollection = 'users'; 
//   Rx<UserModel> userModel = UserModel().obs; 

//   var logger = Logger();

//   @override
//   void onReady(){
//     super.onReady();
//     firebaseUser = Rx<User>(auth.currentUser!);
    
//     firebaseUser.bindStream(auth.userChanges().asBroadcastStream().cast<User>());//firebaseUser.bindStream(auth.userChanges().asBroadcastStream());
//     ever(firebaseUser, _setInitialScreen); 
//   }

//   _setInitialScreen(User user) {
//     if(user == null){
//       Get.offAll(() => AuthenticationScreen()); 
//     } else {
//       Get.offAll(() => const HomeScreen());
//     }
//   }
//   void signIn() async{ 
//     try{
//       showLoading();
// await auth.signInWithEmailAndPassword(
//   email: email.text.trim(), 
// password: password.text.trim())
// .then((result) {
//   String _userId = result.user!.uid; 
//   _initializeUserModel(_userId);
// }); 
//     } catch(e){
//       debugPrint(e.toString()); 
// Get.snackbar('Sign In Failed', 'Try again'); 
//     }
//   }
//   void signUp() async{ 
//     showLoading();
//     try{
// await auth.createUserWithEmailAndPassword(email: email.text.trim(), 
// password: password.text.trim())
// .then((result) {
//   String _userId = result.user!.uid; 
//   _addUserToFirestore(_userId);
//   _initializeUserModel(_userId);
  
// }); 
//     } catch(e){
//       debugPrint(e.toString()); 
// Get.snackbar('Sign In Failed', 'Try again'); 
//     }
//   }
//   void signOut() async{ 
//     auth.signOut();
//   }

//   // creating private method for adding user to the firestore. 
//   _addUserToFirestore(String userId){
// firebaseFirestore.collection(usersCollection).doc(userId).set({
//     "name": name.text.trim(), 
//     "id": userId, 
//     "email": email.text.trim(), 
//     "cart": [],
//   }); 
//   }

//   _clearControllers() {
//     name.clear();
//     email.clear();
//     password.clear();
//   }

//   updateUserData(Map<String, dynamic> data) {
//     logger.i('Updated'); 
//     firebaseFirestore
//     .collection(usersCollection)
//     .doc(userModel.value.id)
//     .update(data);
//   }

//   // creating private method to initialize user model
// _initializeUserModel(String userId) async {
//   userModel.value = await firebaseFirestore
//   .collection(usersCollection) 
//   .doc(userId)
//   .get()
//   .then((doc) => UserModel.fromSnapshot(doc));
// }
// }