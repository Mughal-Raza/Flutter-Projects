import 'package:quiz_app/models/quiz_quest.dart';

const questions = [
  QuizQuestion(
    'What is a correct syntax to output "Hello World" in Python?',
    [
      'print("Hello World")',
      'p("Hello World")',
      'echo "Hello World"',
      'echo("Hello World");',
    ],
  ),
  QuizQuestion(
    'How do you insert COMMENTS in Python code?',
    [
      '#This is a comment',
      '//This is a comment',
      '/*This is a comment*/',
      '/This is a comment',
    ],
  ),
  QuizQuestion(
    'Which one is NOT a legal variable name?',
    [
      'my-var',
      'Myvar',
      'my_var',
      '_myvar',
    ],
  ),
  QuizQuestion(
    'How do you create a variable with the numeric value 5?',
    [
      'Both the other answers are correct',
      'x = int(5)',
      'x = 5',
      'None of these',
    ],
  ),
  QuizQuestion(
    'What is the correct file extension for Python files?',
    [
      '.py',
      '.pyt',
      '.pyth',
      '.pt',
    ],
  ),
  QuizQuestion(
    'How do you create a variable with the floating number 2.8?',
    [
      'Both the other answers are correct',
      'x = float(2.8)',
      'x = 2.8',
      'None of these',
    ],
  ),
  QuizQuestion(
    'What is the correct syntax to output the type of a variable or object in Python?',
    [
      'print(type(x))',
      'print(typeOf(x))',
      'print(typeof x)',
      'print(typeof(x))',
    ],
  ),
  QuizQuestion(
    'What is the correct way to create a function in Python?',
    [
      'def myFunction():',
      'create myFunction():',
      'function myfunction():',
      'func myfunction():',
    ],
  ),
  QuizQuestion(
    'What is a correct syntax to return the first character in a string?',
    [
      'x = "Hello"[0]',
      'x = sub("Hello", 0, 1)',
      'x = "Hello".sub(0, 1)',
      'x = "Hello".sup(0, 1)',
    ],
  ),
  QuizQuestion(
    'Which method can be used to remove any whitespace from both the beginning and the end of a string?',
    [
      'strip()',
      'len()',
      'ptrim()',
      'trim()',
    ],
  ),
  QuizQuestion(
    'Which method can be used to return a string in upper case letters?',
    [
      'upper()',
      'upperCase()',
      'uppercase()',
      'toUpperCase()',
    ],
  ),
  QuizQuestion(
    'Which method can be used to replace parts of a string?',
    [
      'replace()',
      'switch()',
      'repl()',
      'replaceString()',
    ],
  ),
  QuizQuestion(
    'Which operator is used to multiply numbers?',
    [
      '*',
      '#',
      'X',
      '%',
    ],
  ),
  QuizQuestion(
    'Which operator can be used to compare two values?',
    [
      '==',
      '<>',
      '><',
      '=',
    ],
  ),
  QuizQuestion(
    'Which of these collections defines a LIST?',
    [
      '["apple", "banana", "cherry"]',
      '{"apple", "banana", "cherry"}',
      '("apple", "banana", "cherry")',
      '{"name": "apple", "color": "green"}',
    ],
  ),
];
