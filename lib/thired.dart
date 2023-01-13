import 'package:flutter/material.dart';
import 'package:navigate_test2/ScreenArguments.dart';
import 'package:navigate_test2/main.dart';

class Thired extends StatefulWidget {
  const Thired({super.key});
  static const routeName = '/thired';
  @override
  State<Thired> createState() => _ThiredState();
}

class _ThiredState extends State<Thired> {

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => MyHomePage()
    )) ?? false;
  }
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return  new WillPopScope(onWillPop: _onWillPop,child: Scaffold(
      appBar: AppBar(
        title: Text('thired Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${args.title}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          ],

        ),
      ),
    ),
    );

  }
}
