import 'package:flutter/material.dart';

import '../main.dart';

class SecondScreen extends StatelessWidget {
  String Mail;
  String Pass;
  bool? isThirdButton;

  SecondScreen(
      {required this.Mail, required this.Pass, this.isThirdButton = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second Screen'),
      ),
      body: isThirdButton != true
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'User name : $Mail',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Text(
                    'Pass : $Pass',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                      (Route<dynamic> route) => false);
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: const Center(
                      child: Text(
                    'go to Home',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
    );
  }
}
