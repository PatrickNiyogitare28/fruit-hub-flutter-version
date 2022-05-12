// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruits_hub/modals/category.dart';
import 'package:fruits_hub/widgets/recommended-combo.dart';
import 'package:fruits_hub/widgets/search-bar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Category> categories = [
    Category(id: "01", name: "All"),
    Category(id: "02", name: "Salad Combo"),
    Category(id: "03", name: "Berry Combo"),
    Category(id: "04", name: "Mango Combo"),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(children: [
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
        padding: EdgeInsets.all(15),
        child: SearchBar(),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0),
            height: 50.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Row(children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: const Color.fromARGB(255, 226, 226, 226),
                                width: 1)),
                        child: Text(categories[index].name)),
                    const SizedBox(
                      width: 10,
                    )
                  ]);
                })),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended Combo",
                    style: TextStyle(fontSize: 16),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: screenWidth * 0.2,
                  color: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.only(top: 10),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: screenWidth,
        padding: const EdgeInsets.all(20),
        child: const RecommendedCombo(),
      )
    ]));
  }
}
