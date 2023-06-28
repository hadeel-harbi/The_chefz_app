import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/components/details_screen/custom_icon.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';
import 'package:the_chefz_hadeel/models/restaurant.dart';
import 'package:the_chefz_hadeel/screens/cart_screen.dart';

import '../components/food_screen/note_text_field.dart';
import '../data/cart_data.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key, required this.myMenu});

  final Menu myMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          CartData.cartList.add(myMenu);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CartScreen();
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: mySecondaryColor,
          elevation: 0,
          minimumSize: const Size(350, 40),
        ),
        child: const Text(
          "Add to Cart",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Stack(children: [
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    myMenu.foodImage!,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 200,
                  color: const Color.fromARGB(126, 73, 73, 73),
                ),
                Column(children: [
                  height32,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CustomIcon(
                            iconName: Icons.arrow_back_ios_new),
                      ),
                      const CustomIcon(iconName: Icons.share),
                    ],
                  ),
                ])
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            //------------------ details
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(myMenu.foodTitle!,
                        style: const TextStyle(
                            color: myPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const Icon(Icons.favorite_border),
                  ],
                ),
                height32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                        Text(
                          myMenu.foodRating!,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 34, 34, 34),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      myMenu.foodPrice!,
                      style: const TextStyle(
                          color: myPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                height32,
                //----------- Quantity
                const Text(
                  "Quantity",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: myPrimaryColor),
                ),
                height16,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(136, 197, 197, 197),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("item"),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.remove),
                          ),
                          Text("1"),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                height24,
                //------------------ add a note
                const Text(
                  "Add a note (optional)",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: myPrimaryColor),
                ),
                height24,
                const NoteTextField(),

                //------------------ add to cart
              ],
            ),
          ),
        ],
      ),
    );
  }
}
