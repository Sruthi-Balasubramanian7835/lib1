import 'package:flutter/material.dart';
import 'package:sample/date.dart';
import 'package:sample/drawer.dart';
import 'package:sample/dropdown.dart';
import 'package:sample/formvalidation.dart';
import 'package:sample/navigation.dart';
import 'package:sample/snack.dart';
import 'package:sample/toast.dart';
import 'package:sample/url.dart';

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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body:Navigate(),
      )
    );
  }
}

