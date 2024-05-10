import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/favicon.png',
          height: 90,
          width: 90,
        ),
      ),
      bottomNavigationBar: const SizedBox(
        height: 60,
        width: 60,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
