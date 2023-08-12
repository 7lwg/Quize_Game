import 'package:flutter/material.dart';
import 'Screens/opening_screen.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OpeningScreen());
    // home: const Login());
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Image Fit Example',
  //     home: Scaffold(
  //         // body: Stack(
  //       // alignment: Alignment.center,
  //       // children: [
  //       //   Container(
  //       //     decoration: const BoxDecoration(
  //       //       image: DecorationImage(
  //       //         image: AssetImage("img/background.jpeg"),
  //       //         fit: BoxFit.fill,
  //       //       ),
  //       //     ),
  //       //   ),
  //       //   Image.asset(
  //       //     'img/quiz_time.png',
  //       //     // height: MediaQuery.of(context).size.height * 0.2,
  //       //   ),
  //       //   const Positioned(
  //       //     child: const Text(
  //       //       "ITI Quiz App",
  //       //       style: TextStyle(
  //       //         fontSize: 30,
  //       //         fontFamily: 'Pacifico',
  //       //         color: Colors.yellow,
  //       //       ),
  //       //     ),
  //       //     bottom: 250,
  //       //   ),
  //       //   const Positioned(
  //       //     child: const Text(
  //       //       "We Are Creative enjoy our App",
  //       //       style: TextStyle(
  //       //         fontSize: 25,
  //       //         fontFamily: 'DancingScript',
  //       //         fontWeight: FontWeight.normal,
  //       //         color: Colors.white,
  //       //       ),
  //       //     ),
  //       //     bottom: 200,
  //       //   ),
  //       //   Positioned(
  //       //     bottom: 20,
  //       //     child: ElevatedButton(
  //       //       onPressed: () {},
  //       //       style: ElevatedButton.styleFrom(
  //       //           minimumSize: Size(350, 50),
  //       //           backgroundColor: Color.fromARGB(255, 21, 131, 24),
  //       //           shape: RoundedRectangleBorder(
  //       //             borderRadius: BorderRadius.circular(10),
  //       //           ),
  //       //           textStyle: TextStyle(fontSize: 20)),
  //       //       child: Text('Start'),
  //       //     ),
  //       //   )
  //       // ],
  //     )),
  //   );
  // }
// }




// Container(
//               child: ButtonBar(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                         minimumSize: Size(350, 50),
//                         backgroundColor: Color.fromARGB(255, 21, 131, 24),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         textStyle: TextStyle(fontSize: 20)),
//                     child: Text('Start'),
//                   ),
//                 ],
//               ),
//             ),