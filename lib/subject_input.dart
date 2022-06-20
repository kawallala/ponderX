import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ponder_x/subjects_score_controller.dart';

import 'formatters/numerical_range_formatter.dart';

class SubjectInput extends StatelessWidget {
  const SubjectInput({
    Key? key,
    required this.controller,
    required this.subjectName,
  }) : super(key: key);

  final SubjectsScoreController controller;
  final String subjectName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 100, child: Text('Lenguaje')),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextField(
            controller: controller.languageScoreEditingController,
            maxLength: 3,
            decoration: const InputDecoration(
              labelText: "Ingresar puntaje",
              counterText: "",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              NumericalRangeFormatter(min: 0, max: 850)
            ],
          ),
        ),
      ],
    );
  }
}
