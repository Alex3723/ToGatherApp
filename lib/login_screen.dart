import 'package:flutter/material.dart';
import 'components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.indigo.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              SizedBox(height: 40),
              Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              AuthInput(hintText: "Email"),
              SizedBox(height: 10),
              AuthInput(hintText: "Password", obscureText: true),
              SizedBox(height: 20),
              AuthButton(text: "ACCEDI", onPressed: () {}),
              SizedBox(height:40),
            ],
          ),
        ),
      ),
    );
  }
}
