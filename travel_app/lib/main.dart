import 'package:flutter/material.dart';

import '../pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return const MaterialApp(
      title: 'Flutter Travel App',
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
