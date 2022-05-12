import 'package:flutter/material.dart';
import 'package:fruits_hub/widgets/search-bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
          AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Welcome, Chris",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: false,
            leading: Image.asset("assets/icons/menu.png"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                      )
                    ]),
                    child: Image.asset("assets/icons/cart-action.png"),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding:  EdgeInsets.all(15),
            child:  SearchBar(),
          )

        ]),
      ),
    );
  }
}
