import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment.center;
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        SizedBox(width: double.infinity,child: SvgPicture.asset("assets/icons/bg.svg",fit: BoxFit.cover)),
        Column(
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
              "${_qnController.numOfCorrectAns * 10}/${_qnController.question.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: kSecondaryColor),
            ),
            Spacer(flex: 3),
            IconButton(onPressed: () {Get.to(WelcomeScreen());}, icon: Icon(Icons.home),iconSize: 20),
          ],
        )
      ]),
    );
  }
}
