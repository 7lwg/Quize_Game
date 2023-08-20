import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quize_game_ahmed_othman_alhalwagy/global/questions.dart';
import 'score_screen.dart';
// import 'global/questions.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  const QuizScreen({super.key, required this.categoryMap});
  // const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

int index = 0;
int score = 0;
int temp_score = 0;

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: widget.categoryMap["color"],
          automaticallyImplyLeading: false,
          title: Center(child: Text((widget.categoryMap["name"]))),
          leading: Center(
              child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Text(
              "${index + 1}/${(widget.categoryMap["data"] as List).length}",
              style: TextStyle(fontSize: 20),
            ),
          )),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: Image.asset(
                'img/logo page2.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: Column(
                  children: [
                    Text(
                      'Question ${index + 1}',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Pacifico",
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        widget.categoryMap["data"][index]["question"],
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Pacifico",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                margin: const EdgeInsets.only(
                    top: 20, bottom: 40, left: 10, right: 10),
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 227, 225, 225),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Choise is:',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Pacifico",
                    ),
                  ),
                  for (int i = 0;
                      i <
                          ((widget.categoryMap["data"][index]["answer"] as List)
                              .length);
                      i++)
                    InkWell(
                      onTap: () {
                        score += widget.categoryMap["data"][index]["answer"][i]
                            ['score'] as int;
                        if (index + 1 <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          index = 0;
                          temp_score = score;
                          score = 0;
                          // score += widget.categoryMap["data"]["answer"]["score"]
                          //     as int;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => ScoreScreen(
                                    totalScore: temp_score,
                                    numberOfQuestions:
                                        (widget.categoryMap["data"] as List)
                                            .length),
                              ));
                        }
                      },
                      child: Container(
                        child: Text(
                          widget.categoryMap["data"][index]["answer"][i]
                              ["choise"],
                          style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        padding: EdgeInsets.all(10),
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height * 0.07,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 225, 225),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 6,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            )),
          ],
        ));
  }
}
