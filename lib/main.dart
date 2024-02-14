import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/sneex/constants/firebase.dart';
import 'package:get_x/sneex/controllers/authController.dart';

import 'simple_cart/catalogscreen.dart';
import 'sneex/controllers/appController.dart';


// void main() async{
//   WidgetsFlutterBinding.ensureInitialized(); 
//   await initialization.then((value) {
//      Get.put(AppController());
//      Get.put(AuthController()); 
//   }); 
//   runApp(const MyApp());
// }

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CatalogScreen() , 
    );
  }
}


// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold( 
//       body: Center(child: CircularProgressIndicator(),)
//     );
//   }
// }