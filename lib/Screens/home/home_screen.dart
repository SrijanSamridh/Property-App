import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prop/Screens/components/drawer.dart';
import 'package:prop/utils/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  User? user;

  @override
  void initState() {
    super.initState();
    User? newUser = FirebaseAuth.instance.currentUser;
    setState(() {
      user = newUser;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(user),
      body: const Body(),
      drawer: const MyDrawer(),
    );
  }
}

AppBar buildAppBar(dynamic user) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.white10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.widgets_outlined,
                color: Color.fromARGB(255, 255, 251, 251),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        );
      },
    ),
    title: const Text('Home Page', style: TextStyle(
          letterSpacing: 3,
        ),),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: user != Null
            ? CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.photoURL),
                ),
              )
            : const Icon(CupertinoIcons.person),
      )
    ],
  );
}

