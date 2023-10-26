import 'package:flutter/material.dart';
import 'package:truth_or_dare_app/startscreen.dart';
import 'package:truth_or_dare_app/tod_qs_screen.dart';

class TODApp extends StatefulWidget {
  const TODApp({super.key});

  @override
  State<TODApp> createState() {
    return _TODApp();
  }
}

const startScreen = 'start';
const qsScreen = 'ques';

class _TODApp extends State<TODApp> {
  var activeScreen = startScreen;

  void switchScreen() {
    setState(() {
      activeScreen = qsScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget displayScreen = TODStartscreen(switchScreen: switchScreen);

    if (activeScreen == qsScreen) {
      displayScreen = const TODQsScreen();
    }

    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: displayScreen,
        ),
      ),
    );
  }
}
