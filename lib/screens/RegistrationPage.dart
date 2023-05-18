import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  final String? email;
  final String? password;

  RegistrationPage({this.email, this.password});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController(text: email);
    final passwordController = TextEditingController(text: password);

    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Perform registration logic here
                  String enteredEmail = emailController.text;
                  String enteredPassword = passwordController.text;

                  // Replace with your actual registration logic
                  print('Email: $enteredEmail');
                  print('Password: $enteredPassword');
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
