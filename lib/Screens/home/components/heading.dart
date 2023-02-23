import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.heading, required this.width,
  });
  final String heading;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: Text(
              heading,
              style: const TextStyle(
                letterSpacing: 1,
                color: Color.fromARGB(255, 62, 60, 60),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 1,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
