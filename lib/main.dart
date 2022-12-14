import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onfinance/utils/bottomnavbar.dart';

import 'utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnFinance',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PlusJakartaSans',
        scaffoldBackgroundColor: backgroundColor,
        primaryTextTheme: Typography().white,
      ),
      home: const BottomNavBar(),
    );
  }
}
