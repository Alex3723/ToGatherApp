import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'components.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              SizedBox(height: 60),
              Text("REGISTRATI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              AuthButton(
                icon: Icons.g_mobiledata, // Per ora un'icona placeholder
                text: "CONTINUA CON GOOGLE",
                onPressed: () {},
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
              SizedBox(height: 20),
              AuthButton(
                text: 'REGISTRATI CON UN EMAIL',
                onPressed: () {},
              ),
              SizedBox(height: 60),
              Text("Hai già un account?",
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              AuthButton(
                text: "LOGIN",
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
