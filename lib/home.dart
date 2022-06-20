import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ponder_x/subject_input.dart';
import 'package:ponder_x/subjects_score_controller.dart';

import 'formatters/numerical_range_formatter.dart';

class Home extends GetView<SubjectsScoreController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('${controller.title}')),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SubjectInput(controller: controller, subjectName: 'Lenguaje',),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 100, child: Text('Matematicas')),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.mathematicsScoreEditingController,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 100, child: Text('Ciencias')),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.scienceScoreEditingController,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 100, child: Text('Historia')),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.historyScoreEditingController,
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
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.updateScores();
                    print(
                        '${controller.languageScore}, ${controller.mathematicsScore}, ${controller.scienceScore}, ${controller.historyScore}');
                  },
                  child: const Text("test"))
            ],
          ),
        ),
      ),
    );
  }
}


