import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/models.dart';

import '../widgets.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          ...question.answers
              .map(
                (e) => AnswerWidget(
                  isRight: e.isRight,
                  title: e.title,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
