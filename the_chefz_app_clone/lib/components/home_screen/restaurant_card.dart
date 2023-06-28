import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/models/restaurant.dart';

import '../../constants/constants.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.myRestaurant,
  });

  final Restaurant myRestaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
          color: Color.fromARGB(255, 232, 232, 232),
        ),
      ),
      elevation: 0,
      child: Column(
        children: [
          // ------------ Restaurant image
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(myRestaurant.restaurantImage!)),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipOval(
                      // ------------ Restaurant logo
                      child: Image.asset(
                        myRestaurant.restaurantLogo!,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  height16,
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ------------ Restaurant name
                  Text(
                    myRestaurant.restaurantName!,
                    style: const TextStyle(
                        color: myPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  // ------------ location and rating
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      Text(myRestaurant.location!,
                          style: const TextStyle(fontSize: 12)),
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amber,
                      ),
                      Text(myRestaurant.rating!,
                          style: const TextStyle(fontSize: 12)),
                      Text(myRestaurant.ratingMember!,
                          style: const TextStyle(
                              color: Colors.amber, fontSize: 12)),
                    ],
                  ),
                  // ------------ category
                  Text(myRestaurant.category!,
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
