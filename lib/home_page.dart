import 'package:flutter/material.dart';
import 'package:teste_2/popup.dart';
import 'package:teste_2/question.dart';
import 'package:teste_2/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Question questionText = CreateQuestion.getQuestion;

    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                questionText.question,
                style: const TextStyle(
                  fontSize: 28,
                  wordSpacing: 2,
                  height: 1.35,
                ),
                textAlign: TextAlign.center,
              ),
            )),
          ),
          Expanded(
            child: Column(
              children: [
                CustomButton(
                    title: 'Verdadeiro',
                    functionCallback: () {
                      if (questionText.response) {
                        CustomAlert.onBasicAlertPressedTrue(context);
                      } else {
                        CustomAlert.onBasicAlertPressedFalse(context);
                      }
                      Future.delayed(
                        const Duration(seconds: 1),
                        () => setState(() {
                          questionText = CreateQuestion.getQuestion;
                        }),
                      );
                    },
                    color: Colors.lightGreen),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    title: 'Falso',
                    functionCallback: () {
                      if (!questionText.response) {
                        CustomAlert.onBasicAlertPressedTrue(context);
                      } else {
                        CustomAlert.onBasicAlertPressedFalse(context);
                      }

                      Future.delayed(
                        const Duration(seconds: 1),
                        () => setState(() {
                          questionText = CreateQuestion.getQuestion;
                        }),
                      );
                    },
                    color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
