import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Explore Page',
        style: TextStyle(
          color: Colors.white,
        ),
      )),
    );
  }
}
