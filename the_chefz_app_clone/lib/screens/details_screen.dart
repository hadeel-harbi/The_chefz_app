import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';
import 'package:the_chefz_hadeel/models/restaurant.dart';
import '../components/details_screen/restaurant_details.dart';
import '../components/details_screen/meals_list.dart';
import '../components/details_screen/side_dishes_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.myRestaurant});
  final Restaurant myRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------ Restaurant Details
            RestaurantDetails(myRestaurant: myRestaurant),
            // ------------------ Menu Details
            tabSection(context),
          ],
        ),
      ),
    );
  }

  Widget tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: const TabBar(
                labelColor: myPrimaryColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: myPrimaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Meals"),
                  Tab(text: "Side Dises"),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(children: [
              MealsList(myRest: myRestaurant),
              SideDishesList(myRest: myRestaurant),
            ]),
          ),
        ],
      ),
    );
  }
}
