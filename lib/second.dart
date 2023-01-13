import 'package:flutter/material.dart';
import 'package:navigate_test2/main.dart';
import 'package:navigate_test2/thired.dart';

class Second extends StatelessWidget {
  final String Mail;
  final String Pass;
  Second({required this.Mail,required this.Pass});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('User name : $Mail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('Pass : $Pass',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => Thired(Mess: 'this message frome second screen'));
                  Navigator.pushReplacement(context, route);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Center(child: Text('Thired screen', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => MyHomePage());
                  Navigator.pushReplacement(context, route);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Center(child: Text('Home screen', style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),)),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
