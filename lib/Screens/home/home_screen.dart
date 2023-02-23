import 'package:flutter/material.dart';
import 'package:prop/utils/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Home Page', style: TextStyle(
          letterSpacing: 3,
        ),),
        elevation: 0,
      ),
      body: const Body(),
    );
  }
}


