import 'package:flutter/material.dart';
import 'package:prac/answer.dart';
import 'package:prac/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentquestionindex = 0;

  void answerQuestion() {
    currentquestionindex++; // increment the value by 1
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ), // space between buttons
                child: AnswerButton(answer, onTap: () {}),
              );
            }),
          ],
        ),
      ),
    );
  }
}
