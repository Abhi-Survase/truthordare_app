import 'package:flutter/material.dart';

class TODQsScreen extends StatefulWidget {
  const TODQsScreen({super.key});

  @override
  State<TODQsScreen> createState() {
    return _TODQsScreen();
  }
}

class _TODQsScreen extends State<TODQsScreen> {
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(25),
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Text(
                'Truth-hhh hhhh hhhhhh h hhhhhh hhhh hhhhhhhhhhhh hhhhh hhhhhhhhhhhhhhhhhhhh',
                style: TextStyle(fontSize: 30, color: Colors.blue),
                textAlign: TextAlign.center),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                '-------- Roll --------',
                maxLines: 1,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              )),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
                'Dare-eeee ee eee  eeeee eee ee  ee eeeeeee eeee e eee e e eeeeeeeeeeeeeeeeeee',
                style: TextStyle(fontSize: 30, color: Colors.red),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
