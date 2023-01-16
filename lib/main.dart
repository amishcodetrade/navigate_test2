import 'package:flutter/material.dart';
import 'package:navigate_test2/screens/ScreenArguments.dart';
import 'package:navigate_test2/screens/first_screen.dart';
import 'package:navigate_test2/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {FirstScreen.routeName: (context) => const FirstScreen()},
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FirstScreen.routeName,
                    arguments: ScreenArguments(
                        title: 'This message from home screen',
                        isFirstScreen: false),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: const Center(
                      child: Text(
                    'First screen',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              Mail: 'Amish@gmail.com',
                              Pass: 'Amish@12345',
                            )),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: const Center(
                      child: Text(
                    'second screen',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FirstScreen.routeName,
                    arguments: ScreenArguments(title: '', isFirstScreen: true),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: const Center(
                      child: Text(
                    'go to first screen',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
