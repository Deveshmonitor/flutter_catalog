import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome User"),
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              hintText: "Enter Your Username",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Enter Your Password",
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              // Add your login logic here
              print('Username: ${usernameController.text}');
              print('Password: ${passwordController.text}');
            },
            child: const Text(    
              'Login',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
