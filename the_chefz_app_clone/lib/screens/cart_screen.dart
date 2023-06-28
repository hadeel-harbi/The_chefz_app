import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/components/cart_screen/buttons.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';

import '../components/cart_screen/cart_food_card.dart';
import '../data/cart_data.dart';
import 'base_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: mySecondaryColor,
          ),
        ),
        title: const Text(
          "Cart",
          style:
              TextStyle(color: mySecondaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const BaseScreen();
                  },
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.home,
                color: mySecondaryColor,
              ),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        elevation: 0,
      ),
      body: Column(
        children: [
          height24,
          buttonsRow(context),
          height16,
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return cartFoodCard(
                context: context,
                myMenu: CartData.cartList[index],
                deleteDone: () {
                  setState(() {});
                },
              );
            },
            itemCount: CartData.cartList.length,
          ),
        ],
      ),
    );
  }
}
