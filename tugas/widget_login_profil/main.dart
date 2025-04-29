import 'package:flutter/material.dart';
import 'package:login_profil_widget/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TUGAS FLUTTER (WIDGET)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 15, 17, 28)),
      ),
      home: LoginScreen(),
    );
  }
}