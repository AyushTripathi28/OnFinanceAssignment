import 'package:flutter/material.dart';
import 'package:onfinance/utils/bottomnavbar.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnFinance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              button: const TextStyle(color: Colors.white),
            ),
        fontFamily: 'PlusJakartaSans',
        scaffoldBackgroundColor: backgroundColor,
        primaryTextTheme: Typography().white,
      ),
      home: const BottomNavBar(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OnFinance')),
      body: Container(
        child: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
