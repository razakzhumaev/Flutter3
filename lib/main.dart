import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: 100,
          // ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 7,
                  offset: Offset(0, 40),
                ),
              ],
            ),
            height: 500,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    alignment: Alignment.bottomLeft,
                    height: 40,
                  ),
                  TextField(
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      hintText: 'Email',
                      suffix: Icon(Icons.delete),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 100,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                      ),
                      Container(
                        height: 100,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Password',
                      counterText: '0/8',
                      suffix: Icon(Icons.delete),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 300,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 50,
                width: 250,
                child: Text(
                  "Don't have an account?",
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 50,
                width: 100,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
