import 'package:flutter/material.dart';
import 'package:quize_game_ahmed_othman_alhalwagy/Screens/login_screen.dart';
import 'quiz_screen.dart';

class Catigory extends StatelessWidget {
  Catigory({super.key});

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => QuizScreen(),
                    ),
                  );
                },
                child: Container(
                  child: Center(child: Text(quizName[i])),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height * 1 / 3,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    color: quizColor[i],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
