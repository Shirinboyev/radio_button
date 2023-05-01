import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? val;
  bool check = false;
  bool check1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
          ),
          Checkbox(
              value: check1,
              onChanged: (check) {
                setState(() {
                  check = check1!;
                });
              }),
        ],
      ),
    );
  }
}
