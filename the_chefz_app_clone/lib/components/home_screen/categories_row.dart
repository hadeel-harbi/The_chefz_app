import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String> categories = {
      "lib/assets/images/categories/delivery_offer.jpg": "Delivery offer",
      "lib/assets/images/categories/sweets.jpg": "Sweets",
      "lib/assets/images/categories/kunafa.jpg": "Kunafa",
      "lib/assets/images/categories/bakery.jpg": "Bakery",
      "lib/assets/images/categories/burger.jpg": "Burger",
      "lib/assets/images/categories/asian.jpg": "Asian",
      "lib/assets/images/categories/cake.jpg": "Cake",
    };

    return Row(
        children: categories.entries.map((e) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              e.key,
              height: 70,
              width: 70,
            ),
            height8,
            Text(
              e.value,
              style: const TextStyle(
                fontSize: 10,
              ),
            )
          ],
        ),
      );
    }).toList());
  }
}
