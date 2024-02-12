import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Sneex", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.shopping_cart))
        ],
        elevation: 0, centerTitle: true,
      ),
      backgroundColor: Colors.white, 
      drawer: const Drawer(),
body: const Center(child: CircularProgressIndicator(),)
    );
  }
}