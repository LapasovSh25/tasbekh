import 'package:flutter/material.dart';
import 'package:tasbekh/view/home_page.dart';

void main() {
  runApp(const TasbehApp());
}
class TasbehApp extends StatelessWidget {
  const TasbehApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}