import 'package:berpindah_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'profil_screen.dart';
import 'home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home:  LoginScreen(),
      //initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context)=> HomeScreen(),
      },
    );
  }
}

