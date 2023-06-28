import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: textController,
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: Color.fromARGB(255, 213, 213, 213)),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        hintText: 'Search for Dishes, Restaurnts ',
        hintStyle: TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Icon(
            // <-- Search icon
            Icons.search,
            color: myPrimaryColor,
          ),
        ),
      ),
    );
  }
}
