import 'package:flutter/material.dart';
import 'navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navigation(title: "Login Page",),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              makeTextField(_usernameController, "Username", false),
              const SizedBox(height: 16.0),
              makeTextField(_passwordController, "Password", !_showPassword),
              const SizedBox(height: 16.0),
              makeShowPassword(),
              const SizedBox(height: 24.0),
              makeLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  
  TextField makeTextField(TextEditingController _controller, String _labelText, bool _obscureText) {
    return TextField(
      controller: _controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: _labelText,
      ),
    );
  }

  Row makeShowPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text('Show Password'),
        Checkbox(
          value: _showPassword,
          onChanged: (bool? value) {
            setState(() {
              _showPassword = value ?? false;
            });
          },
        ),
      ],
    );
  }

  ElevatedButton makeLoginButton() {
    return ElevatedButton(
      onPressed: () {
        // Implement your login logic here
        final username = _usernameController.text;
        final password = _passwordController.text;
        // For now, just print the username and password
        print('Username: $username, Password: $password');
      },
      child: const Text('Login'),
    );
  }
}

