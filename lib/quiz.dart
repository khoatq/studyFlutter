import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz/question_Screen.dart';
import 'package:quizz/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   ///////////
  //   // TODO: implement initState
  //   activeScreen = StartScreen(
  //       switchScreen); // để trong state vì flutter gọi  tử obj -> constructor fuction(instance variable & method) ->Some OBJ was created &is stored in memory -> initState
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionsScreen();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 79, 22, 178),
                Color.fromARGB(255, 79, 22, 178),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
