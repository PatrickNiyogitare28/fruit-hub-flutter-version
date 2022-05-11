import 'package:flutter/material.dart';

class PrimaryInput extends StatelessWidget {
  final  String? placeholder;

  // ignore: use_key_in_widget_constructors
  const PrimaryInput({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(247, 245, 245, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child:  TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: placeholder,
              labelStyle: const TextStyle(color: Color.fromRGBO(194, 189, 189, 1))),
        ));
  }
}
