import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class GoalCards extends StatelessWidget {
  const GoalCards({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          gradient: kPrimaryGradient,
          // color: const Color.fromARGB(255, 255, 251, 251),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 108, 107, 107).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Icon(icon, size: 50, color: const Color.fromARGB(255, 39, 162, 170)),
      ),
    );
  }
}
