import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.iconName,
  });

  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 38,
      height: 38,
      decoration: const BoxDecoration(
        color: Color.fromARGB(174, 93, 93, 93),
        shape: BoxShape.circle,
      ),
      child: Icon(iconName, color: Colors.white),
    );
  }
}
