
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product.dart';
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
            ItemCard(),
           

          ],
     );

  }
}

class ItemCard extends StatelessWidget{

  // final Product  product;
  // final Function press;
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[

                     Container (
                        padding: const EdgeInsets.all(kDefaultPadding),
                        height: 180,
                        width: 160,
                        decoration : BoxDecoration(
                          color: products[0].color,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child:  Image.asset(products[0].image)
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding /4),
                        child: Text(
                          products[0].title,
                          style:const TextStyle(color:kTextLightColor)
                        )
                      ),

                      const Text(
                        "\$234",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )

             ],
           );
  }
}


