import 'package:flutter/material.dart';

import 'my_homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: const MyHomePage(),
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 20),
            ),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )),
      );
}
