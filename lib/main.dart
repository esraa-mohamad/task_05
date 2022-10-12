import 'package:flutter/material.dart';
import 'package:task_05/modules/home.dart';
import 'package:task_05/modules/login.dart';
import 'package:task_05/modules/product_details.dart';
import 'package:task_05/modules/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

