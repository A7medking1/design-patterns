import 'package:desgin_patterns/widget/abstract_factory/abstract_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'lato',
        textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),
        ),
        useMaterial3: true,
      ),
      home: const AbstractFactoryExample(),
    );
  }
}
