import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("GetX", style: TextStyle(color: Colors.black),),
      ),
    );
  }
}