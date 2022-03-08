
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/screens/components/categories.dart';
import 'package:shopping_app/screens/components/item_card.dart';
import 'package:shopping_app/screens/details/details_screen.dart';


class Body extends StatelessWidget{

  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding), 
              child: Text(
              "women",
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ),

            
            const Categories(),

            Expanded(

              child: Padding(

                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),

                child: GridView.builder(

                    itemCount: products.length,

                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding,
                      childAspectRatio: 0.65
                    ),

                    itemBuilder: (context ,index) =>  ItemCard(

                      product: products[index], 
                      
                      press: () =>  Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]))
                      ),
                    ),

                 ),
              )
            ),
           

          ],
     );

  }
}




