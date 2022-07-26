// ignore_for_file: non_constant_identifier_names, unused_element

import 'package:ase_project1/Pages/Test.dart';
import 'package:ase_project1/Pages/backgroundpage.dart';
import 'package:ase_project1/Pages/homepage.dart';
import 'package:ase_project1/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ase_project1/constants.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    Text Recommend() {
      if (_qnController.numOfCorrectAns * 10 <= 10) {
        return Text(
          "Please Study More.....",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: kSecondaryColor),
        );
      } else if (_qnController.numOfCorrectAns * 10 <= 20) {
        return Text(
          "Please Do 123456 Study More.....",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: kSecondaryColor),
        );
      } else if (_qnController.numOfCorrectAns * 10 <= 30) {
        return Text(
          "Please Do ajhfvkaf Study More.....",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: kSecondaryColor),
        );
      } else {
        return Text(
          "Please Do Not Study You have enough marks.....",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: kSecondaryColor),
        );
      }
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          bgpage(),
          Scaffold(
              backgroundColor: Colors.white60,
              body: Column(
                children: [
                  Spacer(flex: 3),
                  Text(
                    "Score",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: kSecondaryColor),
                  ),
                  Spacer(),
                  Text(
                    "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: kSecondaryColor),
                  ),
                  Spacer(flex: 3),
                  Recommend(),
                  Container(
                      child: ElevatedButton(
                          child: Text("Reset The quiz"),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeApp()));
                          })),
                ],
              )),
        ],
      ),
    );
  }
}
