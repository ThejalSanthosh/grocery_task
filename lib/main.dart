import 'package:flutter/material.dart';
import 'package:grocery_task/view/home_screen/home_screen.dart';

void main(){

  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomeScreen(),
    );
  }
}