import 'package:flutter/material.dart';
import 'package:truth_or_dare_app/tod_qs_screen.dart';
import 'package:google_fonts/google_fonts.dart';

const sc = TODQsScreen();

class TODStartscreen extends StatelessWidget {
  const TODStartscreen({super.key, required this.switchScreen});

  final void Function() switchScreen;

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
          ElevatedButton.icon(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black12)),
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_sharp,
                color: Colors.amber, size: 30),
            label: Text(
              'Start',
              style: GoogleFonts.urbanist(
                  height: 2.1,
                  color: const Color.fromARGB(255, 249, 177, 8),
                  fontSize: 25,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
