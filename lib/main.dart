import 'package:flutter/material.dart';
import 'package:myapp/pages/homepage.dart';

void main() {
  runApp(const Biblio());
}

class Biblio extends StatelessWidget {
  const Biblio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}