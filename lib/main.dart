<<<<<<< HEAD
import 'package:digitalparbhaniclone/screen/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const parbhaniClone());
}

class parbhaniClone extends StatelessWidget {
  const parbhaniClone({super.key});
=======
import 'package:flutter/material.dart';
import 'package:shopping_app/screen/production.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});
>>>>>>> 641c20025dd800c1811192ebe31e8d7e858c8fa2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
<<<<<<< HEAD
        body: Homescreen()));
=======
        body:
            // Spalshscreen(),
            Productsscreen(),
      ),
    );
>>>>>>> 641c20025dd800c1811192ebe31e8d7e858c8fa2
  }
}
