import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
 final String label;
 final OnClickCallBack handleClicked;
 // ignore: use_key_in_widget_constructors
 const PrimaryButton({required this.label, required this.handleClicked});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleClicked,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child:  Align(
            child: Text(
            label,
            style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

typedef OnClickCallBack = void Function();