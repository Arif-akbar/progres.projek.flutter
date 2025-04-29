import 'package:flutter/material.dart';
import 'package:login_profil_widget/dasboard/profile_screen.dart';
import 'componen/button.dart';
import 'componen/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool tampilPassword = true;

  void showPassword() {
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  void _validateInput() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      // Kasih alert/snackbar kalau kosong
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email dan Password tidak boleh kosong'),
          backgroundColor: Colors.redAccent,
        ),
      );
    } else {
      // Kalau sukses, navigasi ke ProfileScreen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(email: emailController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const WidgetText(
          text: 'Login',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: "Enter your email",
                prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: tampilPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.lock, color: Colors.blueAccent),
                suffixIcon: IconButton(
                  onPressed: showPassword,
                  icon: Icon(
                    tampilPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            WidgetButton(label: 'Login', onPressed: _validateInput),
          ],
        ),
      ),
    );
  }
}
