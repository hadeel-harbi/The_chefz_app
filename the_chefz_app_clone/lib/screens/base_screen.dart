import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen.dart';
import 'my_account_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({
    super.key,
  });

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;

  List myScreenList = [
    const HomeScreen(),
    const HomeScreen(),
    const MyAccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;

              setState(() {});
            },
            currentIndex: currentIndex,
            unselectedItemColor: const Color.fromARGB(255, 165, 165, 165),
            selectedItemColor: const Color.fromARGB(255, 84, 36, 55),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.utensils), label: "Chefz"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu), label: "My Order"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "My Account"),
            ]),
        body: myScreenList.elementAt(currentIndex));
  }
}
