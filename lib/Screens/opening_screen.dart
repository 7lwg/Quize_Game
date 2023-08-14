import 'package:flutter/material.dart';
import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/background.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Image.asset(
            'img/quiz_time.png',
            // height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Positioned(
            child: const Text(
              "ITI Quiz App",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
                color: Colors.yellow,
              ),
            ),
            bottom: 250,
          ),
          const Positioned(
            child: const Text(
              "We Are Creative enjoy our App",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            bottom: 200,
          ),
          Positioned(
            bottom: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Login(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: Color.fromARGB(255, 21, 131, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(
                    fontSize: 25,
                  )),
              child: Text(
                'Start',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
