import 'package:digitalparbhaniclone/screen/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const parbhaniClone());
}

class parbhaniClone extends StatelessWidget {
  const parbhaniClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Homescreen()));
  }
}
