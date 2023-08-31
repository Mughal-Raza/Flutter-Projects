import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(190, 0, 0, 0),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Python Quiz',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(200, 0, 0, 0),
              fixedSize: const Size(190, 40),
            ),
            icon: const Icon(
              Icons.arrow_right,
              size: 35,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 26,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          const Text(
            "Copyright by M. Raza",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
