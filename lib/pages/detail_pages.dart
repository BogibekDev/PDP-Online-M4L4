import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const String id = "DetailPage";
  final String? name;
  final int? age;

  DetailPage({super.key, this.name, this.age});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${widget.name}  age: ${widget.age}"),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop({"name": "Dart", "age": 33});
              },
              color: Colors.amber,
              child: Text("Back"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.teal,
              child: Text("Exit"),
            )
          ],
        ),
      ),
    );
  }
}
