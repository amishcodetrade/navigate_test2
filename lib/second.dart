import 'package:flutter/material.dart';
import 'package:navigate_test2/ScreenArguments.dart';

class Second extends StatelessWidget {
  const Second({super.key});
  static const routeName = '/thired';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return new Scaffold(
      appBar: AppBar(
        title: Text('first Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${args.title}',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
