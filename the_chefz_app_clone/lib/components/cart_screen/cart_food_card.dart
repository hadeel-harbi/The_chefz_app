import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../data/cart_data.dart';
import '../../models/restaurant.dart';

Widget cartFoodCard(
    {required BuildContext context,
    required Menu myMenu,
    required Function() deleteDone}) {
  return Container(
    height: 120,
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
    decoration: BoxDecoration(boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(136, 197, 197, 197),
        blurRadius: 4,
      )
    ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              myMenu.foodImage!,
              width: 100,
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myMenu.foodTitle!,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  myMenu.foodPrice!,
                  style: TextStyle(fontSize: 18, color: mySecondaryColor),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                CartData.cartList.remove(myMenu);
                deleteDone.call();
              },
              child: const Icon(
                Icons.close,
                color: Colors.orange,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
