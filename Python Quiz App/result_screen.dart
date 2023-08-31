import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_ans.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });
  final void Function() onRestart;
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'questions': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correct.',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(200, 0, 0, 0),
                fixedSize: const Size(200, 50),
              ),
              icon: const Icon(
                Icons.arrow_left,
                size: 30,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
