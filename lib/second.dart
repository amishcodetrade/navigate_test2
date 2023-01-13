import 'package:flutter/material.dart';
import 'package:navigate_test2/main.dart';
import 'package:navigate_test2/thired.dart';

class Second extends StatefulWidget {
  final String Mail;
  final String Pass;
  Second({required this.Mail,required this.Pass});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
        context: context,
        builder: (context) => MyHomePage()
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(onWillPop: _onWillPop,child: Scaffold(
      appBar: AppBar(
        title: Text('second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('User name : ${widget.Mail}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('Pass : ${widget.Pass}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => Thired());
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
          ],

        ),
      ),
    ),
    );
  }
}
