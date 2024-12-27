import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/logo/logo.png'),
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 16.0),
          Text(
            "Welcome back!",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Color(0xFF3F393A),
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "Use yout credentials and login  to your account",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }
}
