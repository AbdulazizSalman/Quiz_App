import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:adv_basics/questions_summary/questions_answer.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: summaryData.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                      data['user_answer'] == data['correct_answer'],
                      data['question_index'] as int),
                  const SizedBox(
                    width: 10,
                  ),
                  QuestionAnswer(data)
                ],
              );
            }).toList()),
      ),
    );
  }
}
