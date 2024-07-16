import 'package:flutter/material.dart';
import 'package:stack_listview_form/learn_listview/listview.dart';
import 'package:stack_listview_form/stack.dart';
import 'form/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FormApp(),
    );
  }
}

