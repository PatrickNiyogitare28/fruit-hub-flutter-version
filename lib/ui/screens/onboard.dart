import 'package:flutter/material.dart';

class Onboard extends StatelessWidget {
  const Onboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  fullWidth = MediaQuery.of(context).size.width;
    return  Scaffold(

      body: Container(
      //  height: MediaQuery.of(context).size.height,
       color: Colors.white,
       width: fullWidth,
       child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              child: Image.asset("assets/images/basket-1.png")
            ),
            Container(
              width: fullWidth,
              padding: const EdgeInsets.all(20),
              child: Column(
                children:  <Widget>[
                  const Padding(
                    padding:  EdgeInsets.only(top: 20),
                    child:  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Get The Freshest Fruit Salad Combo", 
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                      ),
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    style: TextStyle(
                      fontSize: 15
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: InkWell(
                    onTap: () => {
                      print("Clicked ... ")
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      
                      ),
                      child: const Align(
                        child: Text("Let's Continue", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        )),
                    ),
                  ),
                )
                ],
              ),
            )
          ],
       ),
    ),
    );
  }
}