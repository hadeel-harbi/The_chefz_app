import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/models/restaurant.dart';

import '../../constants/constants.dart';
import 'custom_icon.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({
    super.key,
    required this.myRestaurant,
  });
  final Restaurant myRestaurant;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: Image.asset(
                    myRestaurant.restaurantImage!,
                    fit: BoxFit.cover,
                  ),
                ),
                height56,
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 40, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomIcon(iconName: Icons.arrow_back_ios_new)),
                  const Row(
                    children: [
                      CustomIcon(iconName: Icons.search),
                      CustomIcon(iconName: Icons.file_upload_outlined)
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: ClipOval(
                child: Image.asset(
                  myRestaurant.restaurantLogo!,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                myRestaurant.restaurantName!,
                style: TextStyle(
                    color: myPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.favorite_border)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 8),
          child: Text(
            myRestaurant.category!,
            style: const TextStyle(
              color: Color.fromARGB(255, 145, 145, 145),
              fontSize: 12,
            ),
          ),
        ),
        height32,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "close at 11:59 PM",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.amber,
                  ),
                  Text(
                    myRestaurant.rating!,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    myRestaurant.ratingMember!,
                    style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(thickness: 1)
      ],
    );
  }
}
