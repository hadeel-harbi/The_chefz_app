import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';
import 'package:the_chefz_hadeel/screens/cart_screen.dart';
import 'package:the_chefz_hadeel/screens/details_screen.dart';
import 'package:badges/badges.dart' as badges;
import '../components/home_screen/categories_row.dart';
import '../components/home_screen/filter_row.dart';
import '../components/home_screen/home_screen_top_row.dart';
import '../components/home_screen/image_slider.dart';
import '../components/home_screen/restaurant_card.dart';
import '../components/home_screen/search_text_field.dart';
import '../data/cart_data.dart';
import '../data/data.dart';
import '../models/restaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Restaurant>? listOfRestaurant = [];

  @override
  void initState() {
    super.initState();

    for (var element in restaurantData) {
      listOfRestaurant?.add(Restaurant.fromJson(element));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // -------------- shopping cart button
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
        backgroundColor: Colors.white,
        //------------- body
        body: SafeArea(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    //-------- Top Row
                    HomeScreenTopRow(),

                    //-------- Search TextField
                    SearchTextField(),
                  ],
                ),
              ),

              //-------- Carousel Slider
              const ImageSlider(),

              //-------- Categories Row
              const SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: CategoriesRow()),
              height16,

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Chefz Nearby You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    //-------- Filter Row
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: FilterRow(),
                    ),

                    //-------- list of restaurant
                    restaurantList(),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget restaurantList() {
    return Column(
      children: listOfRestaurant!
          .map((value) => InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsScreen(
                      myRestaurant: value,
                    );
                  }));
                },
                child: RestaurantCard(
                  myRestaurant: value,
                ),
              ))
          .toList(),
    );
  }
}
