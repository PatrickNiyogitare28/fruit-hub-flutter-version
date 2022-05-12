import 'package:flutter/material.dart';
import 'package:fruits_hub/ui/screens/home.dart';
import 'package:fruits_hub/widgets/primary-button.dart';
import 'package:fruits_hub/widgets/primary-input.dart';

class StartOrder extends StatelessWidget {
  const StartOrder({ Key? key }) : super(key: key);

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
              child: Image.asset("assets/images/basket-2.png")
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
                      child: Text("What is your firstname", 
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                      ),
                    ),
                  ),
                 const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: PrimaryInput(placeholder: "First Name",)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: PrimaryButton(label: "Start Ordering", handleClicked: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) =>  const Home())))
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