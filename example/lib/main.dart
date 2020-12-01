import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';

/**
 * Created by GP
 * 2020/12/01.
 * */

/// entry
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// must set the navigatorKey!!!!!!
      navigatorKey: ContextHolder.key,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Context holder example app'),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        child: Text('navigate to second page'),
        onPressed: () {
          Navigator.push(ContextHolder.currentContext, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context holder second page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('Second page.'),
      ),
    );
  }
}
