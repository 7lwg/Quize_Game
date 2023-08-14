import 'package:flutter/material.dart';
import 'package:quize_game_ahmed_othman_alhalwagy/Screens/opening_screen.dart';
import 'catigory.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 3,
          ),
          Text(
            'Hello Ahmed Your Score is 10/10',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontFamily: "Pacifico",
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Catigory(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                elevation: 10,
                padding:
                    EdgeInsets.only(left: 90, right: 90, top: 10, bottom: 10),
                backgroundColor: Color.fromARGB(255, 133, 62, 215),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textStyle: TextStyle(
                  fontSize: 18,
                )),
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Pacifico",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
