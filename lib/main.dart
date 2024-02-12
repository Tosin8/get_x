import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/sneex/constants/firebase.dart';
import 'package:get_x/sneex/controllers/authController.dart';

import 'sneex/screens/home.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 
  await initialization.then((value) {
     Get.put(AppController());
     Get.put(AuthController()); 
  }); 
  runApp(const MyApp());
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
      home: HomeScreen() 
    );
  }
}

