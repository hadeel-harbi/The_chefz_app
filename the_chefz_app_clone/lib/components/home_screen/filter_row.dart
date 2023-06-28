import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        container("All", true),
        container("Start with Zero SR", false),
        container("Up to 50% off", false),
        container("Most Popular", false),
      ],
    );
  }

  Container container(String text, bool isSelcted) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      decoration: BoxDecoration(
        color: isSelcted
            ? myPrimaryColor
            : const Color.fromARGB(255, 235, 235, 235),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isSelcted
                ? Colors.white
                : const Color.fromARGB(255, 113, 113, 113),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
