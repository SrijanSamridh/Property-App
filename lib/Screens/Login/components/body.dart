import 'package:flutter/material.dart';
import 'package:prop/utils/constants.dart';

import '../../../utils/authentication.dart';
import '../../components/custom_clipper.dart';
import 'radio_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                color: kPrimaryColor,
                height: size.height * 0.7,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: const Center(
                    child: Text(
                      'Go Ahead!',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: kTextColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Center(
                    child: Text(
                      'Choose Your Domain',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: kTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 50, vertical: size.height * 0.1),
                  child: const RadioButton(),
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () => signInWithGoogle(context),
          child: Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 10),
            child: SizedBox(
              height: size.height * 0.060,
              child: const Image(
                image: AssetImage('assets/icons/GoogleLogo.png'),
              ),
            ),
          ),
        ),
        const Text("Continue with Google", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
