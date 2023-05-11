import 'package:flutter/material.dart';
import 'package:form_task/home_page.dart';
import 'package:form_task/second_page.dart';
import 'package:form_task/third_page.dart';

import 'd2.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
