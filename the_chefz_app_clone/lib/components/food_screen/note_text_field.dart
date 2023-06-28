import 'package:flutter/material.dart';
import 'package:the_chefz_hadeel/constants/constants.dart';

class NoteTextField extends StatefulWidget {
  const NoteTextField({
    super.key,
  });

  @override
  State<NoteTextField> createState() => _NoteTextFieldState();
}

class _NoteTextFieldState extends State<NoteTextField> {
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
            borderSide: BorderSide(width: 1, color: mySecondaryColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        hintText: 'Add your Note Here ',
        hintStyle: TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Icon(
            // <-- Search icon
            Icons.note_alt_outlined,
            color: mySecondaryColor,
          ),
        ),
      ),
    );
  }
}
