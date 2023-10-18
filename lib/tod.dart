import 'package:flutter/material.dart';
import 'package:truth_or_dare_app/startscreen.dart';
//import 'package:truth_or_dare_app/tod_screen.dart';

class TODApp extends StatefulWidget {
  const TODApp({super.key});

  @override
  State<TODApp> createState() {
    return _TODApp();
  }
}

class _TODApp extends State<TODApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const TODStartscreen(),
        ),
      ),
    );
  }
}
