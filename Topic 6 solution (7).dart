import 'dart:io';

class Question {
  String question;
  List<String> options;
  int answerIndex;

  Question(this.question, this.options, this.answerIndex);

  bool checkAnswer(int choice) {
    return choice == answerIndex;
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (int i = 0; i < questions.length; i++) {
      Question q = questions[i];
      print('\nQuestion ${i + 1}: ${q.question}');
      for (int j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Enter your choice (1-${q.options.length}): ');
      int? choice = int.tryParse(stdin.readLineSync() ?? '');
      if (choice == null || choice < 1 || choice > q.options.length) {
        print('Invalid choice! Moving to next question.');
        continue;
      }

      if (q.checkAnswer(choice - 1)) {
        print('Correct!');
        score++;
      } else {
        print('Wrong! Correct answer: ${q.options[q.answerIndex]}');
      }
    }

    print('\nQuiz Completed! Your score: $score/${questions.length}');
  }
}

void main() {
  List<Question> questions = [
    Question('What is the capital of Bangladesh?', ['Dhaka', 'Chittagong', 'Khulna'], 0),
    Question('2 + 2 = ?', ['3', '4', '5'], 1),
    Question('Which programming language is used here?', ['Python', 'Dart', 'Java'], 1),
  ];

  Quiz quiz = Quiz(questions);
  quiz.start();
}