import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 225, 225),
                    //color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
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
                      // height: MediaQuery.of(context).size.height * 0.65,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            prefixIcon: Icon(Icons.person,
                                color: const Color.fromARGB(255, 145, 142, 142),
                                size: 30),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
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
                      child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            suffixIcon: Icon(Icons.visibility_off,
                                color: const Color.fromARGB(255, 145, 142, 142),
                                size: 25),
                            prefixIcon: Icon(Icons.lock,
                                color: const Color.fromARGB(255, 145, 142, 142),
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
                    SizedBox(
                      height: 10,
                    ),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    ElevatedButton(
                      onPressed: () {},
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 60,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Checkbox(
                          value: true,
                          activeColor: Colors.green,
                          onChanged: (newBoll) {},
                        ),
                        Text('Remember me'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
