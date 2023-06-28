import 'package:flutter/material.dart';

import '../../constants/constants.dart';

Widget buttonsRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: myPrimaryColor,
          elevation: 0,
          minimumSize: const Size(120, 40),
        ),
        child: const Text(
          "Delivery",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          minimumSize: const Size(120, 40),
        ),
        child: Text(
          "Pick up",
          style: TextStyle(color: myPrimaryColor, fontSize: 16),
        ),
      ),
    ],
  );
}
