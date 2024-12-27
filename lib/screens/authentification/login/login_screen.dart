import 'package:eventify_app/screens/authentification/login/widget/login_form.dart';
import 'package:eventify_app/screens/authentification/login/widget/login_header.dart';
import 'package:eventify_app/screens/authentification/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo and Header
              const LoginHeader(),
              const SizedBox(height: 40.0),

              // Login Form
              const LoginForm(),

              const SizedBox(height: 20.0),

              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => SignupScreen()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFF6F00),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
