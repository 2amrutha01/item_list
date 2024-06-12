import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  void submit(BuildContext context) async {
    var user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: pass.text);

    if (user.user == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login Failed"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login Successful"),
      ));
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Login Screen",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Enter Email", hintStyle: TextStyle(fontSize: 15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(fontSize: 15)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                submit(context);
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("For Register"))
        ],
      ),
    );
  }
}
