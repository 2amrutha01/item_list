import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<dynamic> items = [];

  @override
  initState() {
    // ignore: avoid_print
    super.initState();
    getitems();
  }

  Future<void> getitems() async {
    try {
      final response =
          await http.get(Uri.parse("https://fakestoreapi.com/products/"));
      final responseData = json.decode(response.body);
      if (response.statusCode == 200) {
        setState(() {
          items = responseData;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid Credentials.")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
              final item = items[index];
              return Column(
                children: [
                  Image.network(item['image']),
                  Text('${item['id']}'),
                  Text(item['title']),
                  Text('${item['price']}'),
                  Text(item['description']),
                  Text(item['category']),
                ],
              );
            }));
  }
}
