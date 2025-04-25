import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = backgroundColor == Colors.white ? const Color.fromARGB(255, 40, 10, 130) : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: changeBackgroundColor,
          child: const Text("tombol bagraund"),
        ),
      ),
    );
  }
}
