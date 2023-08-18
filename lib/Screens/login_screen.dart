import 'dart:developer';
import 'dart:ffi';
import 'catigory.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  RegExp email_regex =
      new RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+[a-zA-Z0-9.-]+\.com\${0,}");

  RegExp user_name_regex = new RegExp(r"^([A-Z]+[ a-zA-Z0-9._%+-]{9,})$");

  RegExp password_regex = new RegExp(
      r"(?=^.{9,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Image.asset('img/logo page2.png',
                      width: MediaQuery.of(context).size.height * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.69,
                    // height: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 225, 225),
                        //color: Colors.red,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: ((MediaQuery.of(context).size.height +
                                        MediaQuery.of(context).size.width) /
                                    2) *
                                0.065,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.30,
                          child: TextFormField(
                            validator: (value) {
                              if (user_name_regex.hasMatch(value!) == false) {
                                return 'Invalid user name';
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(Icons.person,
                                    color: Color.fromARGB(255, 145, 142, 142),
                                    size: 30),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  // borderSide: BorderSide(color: Colors.red)
                                ),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),

                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.65,
                          child: TextFormField(
                              validator: (value) {
                                if (email_regex.hasMatch(value!) == false) {
                                  return 'invalid email address';
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                prefixIcon: Icon(Icons.email,
                                    color: const Color.fromARGB(
                                        255, 145, 142, 142),
                                    size: 30),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20, right: 20),

                          width: MediaQuery.of(context).size.width * 0.8,
                          // height: MediaQuery.of(context).size.height * 0.65,
                          child: TextFormField(
                              validator: (value) {
                                if (password_regex.hasMatch(value!) == false) {
                                  return 'invalid email password';
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                suffixIcon: TextButton(
                                  onPressed: () {},
                                  child: Icon(Icons.visibility,
                                      color: const Color.fromARGB(
                                          255, 145, 142, 142),
                                      size: 25),
                                ),
                                prefixIcon: Icon(Icons.lock,
                                    color: const Color.fromARGB(
                                        255, 145, 142, 142),
                                    size: 30),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.48,
                            ),
                            Text('New to quiz app?'),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0),
                        ElevatedButton(
                          // onPressed: validate,
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Catigory(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              elevation: 10,
                              padding: EdgeInsets.only(left: 70, right: 70),
                              // minimumSize: Size(200, 40),
                              // minimumSize: Size(350, 50),
                              backgroundColor: Color.fromARGB(255, 21, 131, 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              textStyle: TextStyle(
                                fontSize: 18,
                              )),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // Icon(
                        //   Icons.fingerprint,
                        //   color: Colors.blue,
                        //   size: 60,
                        // ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // Text(
                        //   'Use Touch ID',
                        //   style: TextStyle(color: Colors.grey),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // SizedBox(
                            //   width: 20,
                            // ),
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  activeColor: Colors.green,
                                  onChanged: (newBoll) {},
                                ),
                                Text('Remember me'),
                              ],
                            ),

                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 0.2,
                            // ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
