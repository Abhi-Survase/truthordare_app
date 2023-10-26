import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truth_or_dare_app/truthordare_data.dart';

class TODQsScreen extends StatefulWidget {
  const TODQsScreen({super.key});

  @override
  State<TODQsScreen> createState() {
    return _TODQsScreen();
  }
}

var currentTruth = 'Truth Statement';
var currentDare = 'Dare Statement';

class _TODQsScreen extends State<TODQsScreen> {
  @override
  Widget build(context) {
    void randomQs() {
      var qsIndex = Random().nextInt(todData.length);
      setState(() {
        currentDare = todData[qsIndex].dare.toString();
        currentTruth = todData[qsIndex].truth.toString();
      });
    }

    return Container(
      margin: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Text(currentTruth,
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Expanded(
                  child: Divider(thickness: 2.5, color: Colors.amber)),
              SizedBox(
                width: 80,
                child: TextButton(
                    onPressed: randomQs,
                    child: Text(
                      'Roll',
                      maxLines: 1,
                      style: GoogleFonts.ubuntu(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    )),
              ),
              const Expanded(
                child: Divider(thickness: 2.5, color: Colors.amber),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(currentDare,
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
