import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  String name = "";
  int age = 0;

  Future _openDetails() async {
    Map results = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailPage(name: "Flutter", age: 22);
    }));

    if (results.isNotEmpty) {
      setState(() {
        name = results["name"];
        age = results["age"];
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name:$name  age:$age"),
            MaterialButton(
                onPressed: () {
                  _openDetails();
                  // Navigator.pushNamed(context, DetailPage.id);
                },
                color: Colors.amberAccent,
                child: Text("Open with pushNamed")),
            MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, DetailPage.id);
                },
                color: Colors.lightBlue,
                child: Text("Open with pushReplacementNamed"))
          ],
        ),
      ),
    );
  }
}
