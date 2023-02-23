import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prop/Screens/home/home_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int index = 0;
  // ignore: non_constant_identifier_names
  final Screens = const [
    HomeScreen(),
    Center(child: Text('Feed')),
    Center(child: Text('Notification')),
  ];
  @override
  Widget build(BuildContext context) {
    // return LinearNavbar();
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      color: Colors.black,
      backgroundColor: Color.fromARGB(255, 254, 60, 60),
      items: const <Widget>[
        Icon(Icons.home_filled, size: 30),
        Icon(Icons.list, size: 30),
        Icon(Icons.notifications, size: 30),
      ],
      onTap: (index) {
        //Handle button tap
        setState(() => this.index = index);
      },
    );
  }

  NavigationBarTheme buildLinearNavBar() {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.orange))),
      child: NavigationBar(
          height: 45,
          backgroundColor: Colors.black.withOpacity(1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index),
          destinations: const [
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: NavigationDestination(
                  icon: Icon(
                    Icons.dynamic_feed_outlined,
                  ),
                  selectedIcon: Icon(Icons.feed_outlined,
                      color: Colors.red, size: 40),
                  label: 'Feed'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: NavigationDestination(
                  selectedIcon:
                      Icon(FontAwesomeIcons.home, color: Colors.red, size: 30,),
                  icon: Icon(Icons.home_filled),
                  label: 'home'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: NavigationDestination(
                  selectedIcon:
                      Icon(Icons.circle_notifications_rounded, color: Colors.red, size: 40),
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: 'notification'),
            ),
          ]),
    );
  }
}
