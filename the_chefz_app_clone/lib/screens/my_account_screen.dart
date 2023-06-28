import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';
import 'package:badges/badges.dart' as badges;
import '../data/cart_data.dart';
import 'cart_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: mySecondaryColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CartScreen();
            }));
          },
          child: badges.Badge(
            badgeContent: Text(
              CartData.cartList.length.toString(),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.amber,
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                          color: mySecondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.orange,
                    )
                  ],
                ),
                height56,
                settingsRow(Icons.payment, "Payment Cards"),
                settingsRow(Icons.favorite_border, "Myfavorite "),
                settingsRow(Icons.headphones, "Contact us"),
                settingsRow(Icons.share, "Share app"),
                settingsRow(Icons.format_quote, "Faq"),
              ],
            ),
          ),
        ));
  }

  Padding settingsRow(IconData iconName, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                iconName,
                color: const Color.fromARGB(255, 203, 203, 203),
              ),
              width8,
              Text(text,
                  style: const TextStyle(
                    fontSize: 16,
                  ))
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
