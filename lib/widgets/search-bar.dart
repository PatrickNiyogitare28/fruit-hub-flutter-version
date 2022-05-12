import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
           width: screenWidth * 0.66,
           decoration: BoxDecoration(
           color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10))
           ),
           padding: const EdgeInsets.all(20),
           child: Row(
             children: const [
              Icon(Icons.search_outlined, color: Colors.grey,),
              Text("Search for fruits salad combos", 
               style: TextStyle(
                 color: Colors.blueGrey
               ),
              )
             ],
           ),
         ),
         Container(
          width: screenWidth * 0.12,
           decoration: BoxDecoration(
           color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10))
           ),
           padding: const EdgeInsets.only(top: 12, bottom: 12, left: 2, right: 2),
           child: Image.asset("assets/icons/switch.png"),
         )
       ],
    );
  }
}