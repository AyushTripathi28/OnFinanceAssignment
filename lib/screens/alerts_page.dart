import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  const AlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Notification Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
