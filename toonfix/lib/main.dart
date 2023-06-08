import 'package:flutter/material.dart';
import 'package:toonfix/widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 194 482 ',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Button(
                      text: 'Transfer',
                      buttonColor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  SizedBox(width: 30),
                  Button(
                      text: 'Request',
                      buttonColor: Color(0xFF1F2123),
                      textColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
