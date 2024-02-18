import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'simple_cart/catalogscreen.dart';
import 'dart:ui';


void main() {
  
  runApp(const GetMaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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