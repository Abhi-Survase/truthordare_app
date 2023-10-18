import 'package:flutter/material.dart';
import 'package:truth_or_dare_app/tod_screen.dart';

const sc = TODQsScreen();

class TODStartscreen extends StatelessWidget {
  const TODStartscreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/TODlogo.png'),
              width: 300,
              height: 300,
            ),
            //const SizedBox(height: 10),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.flash_on_rounded,
                  color: Colors.amber, size: 35),
              label: const Text(
                'Roll',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
    );
  }
}
