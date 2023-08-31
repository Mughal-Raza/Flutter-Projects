import 'package:flutter/material.dart';
import 'package:quiz_app/answer_screen.dart';
import 'package:quiz_app/data/ques_ans.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({
    super.key,
    required this.onSelectAnswer,
  });
  final void Function(String ans) onSelectAnswer;
  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 26),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (ans) {
                return AnswerButton(
                  answertext: ans,
                  onTap: () {
                    answerQuestion(ans);
                  },
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}