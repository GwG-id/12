import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //hinzufuge selbst
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: double.infinity,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          /*Opacity(
            //opacity: 0.1,
            //child: Image.asset(
              //'assets/images/quiz-logo.png',
              //height: 300,
              //width: 300,
              //color: const Color.fromARGB(150, 255, 255, 255),
            //),
         */
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 230, 240, 130),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ]
      ),
    );
  }
}
