import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/components/details_screen/food_card.dart';
import 'package:the_chefz_hadeel/screens/food_screen.dart';

import '../../models/restaurant.dart';

class MealsList extends StatelessWidget {
  const MealsList({super.key, required this.myRest});
  final Restaurant myRest;

  @override
  Widget build(BuildContext context) {
    Iterable<Menu> myMealsMenu =
        myRest.menu!.where((element) => element.foodType == "Meal");

    return Column(
      children: myMealsMenu
          .map((value) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FoodScreen(
                      myMenu: value,
                    );
                  }));
                },
                child: FoodCard(myMenu: value),
              ))
          .toList(),
    );
  }
}
