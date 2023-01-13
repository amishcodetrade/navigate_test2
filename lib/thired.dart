import 'package:flutter/material.dart';
import 'package:navigate_test2/main.dart';

class Thired extends StatelessWidget {
  final String Mess;
  Thired({required this.Mess});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('thired Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$Mess',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                  child: Center(child: Text('click for Home screen', style: TextStyle(fontSize: 20,
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
