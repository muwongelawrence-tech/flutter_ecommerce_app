
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/components/categories.dart';


class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,

        children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding), 
              child: Text(
              "women",
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ),
            Categories(),
          ],
     );

  }
}


