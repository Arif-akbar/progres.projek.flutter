import 'profil_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homescreen');
            },
            child: Text('Profil'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilScreen(nama: 'arif'),
                ),
              );
            },
            child: Text('Profil'),
          ),
          TextField(controller: namaController),
          TextButton(
            onPressed: () {
              print(namaController.text);
            },
            child: Text('coba text field'),
          ),
        ],
      ),
    );
  }
}
