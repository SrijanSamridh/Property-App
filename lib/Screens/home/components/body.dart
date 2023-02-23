import 'package:flutter/material.dart';
import 'package:prop/utils/constants.dart';


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          color: kPrimaryColor,
        ),
      ],
    );
  }
}