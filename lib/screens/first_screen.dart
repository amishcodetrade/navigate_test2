import 'package:flutter/material.dart';
import 'package:navigate_test2/screens/ScreenArguments.dart';
import 'package:navigate_test2/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('first Screen'),
      ),
      body: args.isFirstScreen != true
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${args.title} ?? ''",
                    // "",
                    style: TextStyle(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              Mail: '',
                              Pass: '',
                              isThirdButton: true,
                            )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Center(
                      child: Text(
                    'go to Second Screen',
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
