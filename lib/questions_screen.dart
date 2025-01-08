import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled12/data/questions.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestion() {
    //currentQuestionIndex = currentQuestionsIndex + 1;
    //currentQuestionsIndex -= 1;
    //currentQuestionsIndex++;// erhöht um eins, ween ich 2 hinzufügen will, es passt nicht
    //currentQuestionsIndex--;

    setState(() {   //es bedeuet dass build-Methode erneut ausgeführt wird
      currentQuestionsIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // überstrecken
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              //'The question...',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            })
            /*AnswerButton(
          answerText: currentQuestion.answers[0],
          onTab: () {},
        ),
        AnswerButton(
          answerText: currentQuestion.answers[1],
          onTab: () {},
        ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTab: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTab: () {},
         */
          ],
        ),
      ),
    );
  }
}
