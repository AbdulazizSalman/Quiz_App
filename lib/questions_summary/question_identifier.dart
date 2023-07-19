import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.isTheAnswerCorrect, this.data, {super.key});

  final int data;
  final bool isTheAnswerCorrect;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isTheAnswerCorrect
            ? const Color.fromARGB(188, 118, 218, 235)
            : const Color.fromARGB(221, 217, 68, 224),
      ),
      child: Text(
        (data + 1).toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
         
        ),
      ),
    );
  }
}
