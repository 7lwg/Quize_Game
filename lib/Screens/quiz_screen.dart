import 'dart:ffi';

import 'package:flutter/material.dart';
import 'score_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 133, 62, 215),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "7/10",
              ),
              Text(
                "General Test",
              ),
              // Size(width, height)
              // ,
              Container(
                child: Image.asset(
                  'img/logo page2.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Text(
                    'Question 1',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Pacifico",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'What is the capital of France?',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Pacifico",
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              margin: const EdgeInsets.only(
                  top: 70, bottom: 40, left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
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
                  for (int i = 0; i < 4; i++)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => ScoreScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: Text(
                          'Option',
                          style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
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
