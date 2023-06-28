import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';
import 'package:the_chefz_hadeel/models/restaurant.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.myMenu});
  final Menu myMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(136, 197, 197, 197),
          blurRadius: 4,
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 120,
                padding: EdgeInsets.all(8),
                child: Image.network(
                  myMenu.foodImage!,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  height16,
                  Text(
                    myMenu.foodTitle!,
                    style: TextStyle(fontSize: 16, color: myPrimaryColor),
                  ),
                  height16,
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        myMenu.foodRating!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  height8,
                  Text(myMenu.foodPrice!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
