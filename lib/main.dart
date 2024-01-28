import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'min_store/storeController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home() 
    );
  }
}

class Home extends GetView<StoreController> {
 Home({Key? key}) : super(key: key);
 
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.spaceCadet,
     appBar: AppBar(
       title: const Text("GetX Store"),),
     drawer: const SideDrawer(),
     body: Container(
       padding: const EdgeInsets.all(10),
       child: SingleChildScrollView(
         child: Column(
           children: [
             MainCard(
               title: "Store Info",
               body: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Flexible(
                         child: Text('Store Name:',
                           style: TextStyle(fontSize: 20),),
                         fit: FlexFit.tight,),
                       const SizedBox(width: 20.0),
                   // Wrapped with Obx to observe changes to the storeName
                   // variable when called using the StoreController.
                       Obx(
                         () => Flexible(
                           child: Text(
                             controller.storeName.value.toString(),
                             style: const TextStyle(
                             fontSize: 22, fontWeight: FontWeight.bold) ),
                           fit: FlexFit.tight,
                         ),),
                     ],),
                   const SizedBox(height: 20.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Flexible(
                         child: Text('Store Followers:',
                           style: TextStyle(fontSize: 20),),
                         fit: FlexFit.tight, ),
                       const SizedBox(width: 20.0),
               // Wrapped with Obx to observe changes to the followerCount
               // variable when called using the StoreController.
                       Obx(
                         () => Flexible(
                           child: Text(
                             controller.followerCount.value.toString(),
                             textAlign: TextAlign.start,
                             style: const TextStyle(
                             fontSize: 22, fontWeight: FontWeight.bold),
                           ),
                           fit: FlexFit.tight,),), ],
                   ),
                   const SizedBox(height: 20.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Flexible(
                         child: Text('Status:',
                           style: TextStyle(fontSize: 20),),
                         fit: FlexFit.tight,),
                       const SizedBox(width: 20.0),
                 // Wrapped with Obx to observe changes to the storeStatus
                 // variable when called using the StoreController.
                       Obx(
                         () => Flexible(
                           child: Text(
                        controller.storeStatus.value ? 'Open' : 'Closed',
                             textAlign: TextAlign.start,
                             style: TextStyle(
                                 color: controller.storeStatus.value
                                     ? Colors.green.shade700
                                     : Colors.red,
                                 fontSize: 22,
                                 fontWeight: FontWeight.bold),),
                           fit: FlexFit.tight,
                         ),  ),  ], ), ], ), );