import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Pass Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.dark)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample Pass Data'),
        ),
        body: Container(),
      ),
    );
  }
}
