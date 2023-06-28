import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class HomeScreenTopRow extends StatelessWidget {
  const HomeScreenTopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: myPrimaryColor,
            elevation: 0,
            minimumSize: const Size(100, 30),
          ),
          child: const Text(
            "Delivery",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            minimumSize: const Size(100, 30),
          ),
          child: const Text(
            "Pick up",
            style: TextStyle(color: myPrimaryColor),
          ),
        ),
        width16,
        Container(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  "lib/assets/images/deliver.jpg",
                  height: 40,
                  width: 40,
                ),
                const Column(
                  children: [
                    Text(
                      "Deliver to",
                      style: TextStyle(
                          color: myPrimaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
