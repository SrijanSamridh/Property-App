
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prop/utils/constants.dart';

import '../../utils/authentication.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "", email = "", profileURL = "";
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
    final user = this.user;
    if (user != null) {
      name = user.displayName!;
      email = user.email!;
      profileURL = user.photoURL!;
    }
    Color color = Colors.white;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              // gradient: kDrawerGradientBg,
            ),
            accountName: Text(name),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(profileURL),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Example.abc@gmail.com"),
          ),
          const ListTile(
            leading: Icon(Icons.check),
            title: Text("Property Manager"),
            subtitle: Text("Manage your property"),
          ),
          const ListTile(
            leading: Icon(Icons.send),
            title: Text("Share"),
          ),
          GestureDetector(
            onTap: (){
              signOut(context);
            },
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: Text("Sign out", style: TextStyle(color: color)),
            ),
          ),
        ],
      ),
    );
  }
}
