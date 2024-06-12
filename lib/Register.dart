import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  void submit() async {
    // try {
    var user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email.text, password: pass.text);

    if (user.user == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Registration Failed"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Registration Successful"),
      ));
      Navigator.pushNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Registration Screen",
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
                submit();
              },
              child: Text("Register"))
        ],
      ),
    );
  }
}
