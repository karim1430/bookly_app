import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          label: Text('Search'),
          hintText: 'Inter Name Book',
          enabledBorder: methodOutlineBorder(),
          focusedBorder: methodOutlineBorder()),
    );
  }

  OutlineInputBorder methodOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
