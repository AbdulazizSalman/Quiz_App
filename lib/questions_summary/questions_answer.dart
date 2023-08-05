import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer(this.data, {super.key});

  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data['question'] as String,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 16),
          ),
          
          Text(
            data['user_answer'] as String,
            style: const TextStyle(
              color: Color.fromARGB(170, 255, 255, 255),
            ),
          ),
        
          Text(
            data['correct_answer'] as String,
            style: const TextStyle(
              color: Color.fromARGB(205, 127, 233, 252),
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
