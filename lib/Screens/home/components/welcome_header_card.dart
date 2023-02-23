import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class WelcomeHeaderCard extends StatefulWidget {
  WelcomeHeaderCard({super.key});

  @override
  State<WelcomeHeaderCard> createState() => _WelcomeHeaderCardState();
}

class _WelcomeHeaderCardState extends State<WelcomeHeaderCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(100),
            ),
          ),
          child: Row(children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(250),
                ),
              ),
            ),
          ]),
        ),
        Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/icons/indusianassist.png'),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome to Prop!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We are glad to have you here',
                      style: TextStyle(
                        color: Color.fromARGB(255, 89, 89, 89),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
