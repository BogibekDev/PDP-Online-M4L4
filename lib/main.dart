import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_pages.dart';
import 'package:mydemo4/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePages(),
        routes: {
          HomePages.id: (context) =>  HomePages(),
          DetailPage.id: (context) =>  DetailPage(),
        });
  }
}
