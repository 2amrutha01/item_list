import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  void submit() async {
    try {
      String nam = name.text;
      double pri = double.parse(price.text);

      FirebaseFirestore.instance
          .collection('iteam')
          .add({'name': nam, 'price': pri}).then((value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("data added successfully")));
        Navigator.pushNamed(context, '/home');
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
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
              controller: name,
              decoration: InputDecoration(
                  hintText: "Enter iteam name",
                  hintStyle: TextStyle(fontSize: 15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              controller: price,
              decoration: InputDecoration(
                  hintText: "Enter Price", hintStyle: TextStyle(fontSize: 15)),
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
