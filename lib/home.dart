import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Sneex", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.shopping_cart))
        ],
        elevation: 0, centerTitle: true,
      ),
      backgroundColor: Colors.white, 
      drawer: Drawer(),

    );
  }
}