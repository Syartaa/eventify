import 'package:eventify_app/screens/authentification/login/login_screen.dart';
import 'package:eventify_app/screens/authentification/signup/widget/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and Header

              Text(
                "Let's create your account!",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Color(0xFF3F393A),
                      fontWeight: FontWeight.bold,
                    ),
              ),

              const SizedBox(height: 40.0),

              // Login Form
              const SignupForm(),

              const SizedBox(height: 20.0),

              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => LoginScreen()));
                    },
                    child: const Text(
                      "Sign in",
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
