import 'package:flutter/material.dart';
import 'package:authui/routes/login.dart';
import 'package:authui/routes/signup.dart';
import 'package:authui/routes/welcome.dart';

void main() {
  runApp(const Auth());
}

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),

      initialRoute: '/',

      routes: {

        '/': (context) => const Welcome(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn(), 

      },
    );
  }
}

