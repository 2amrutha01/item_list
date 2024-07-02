import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Login.dart';
import 'package:my_app/Register.dart';
import 'package:my_app/firebase_options.dart';
import 'package:my_app/home.dart';
import 'package:my_app/items.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => home(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
      title: "MY app",
      home: Reg(),
    );
  }
}
