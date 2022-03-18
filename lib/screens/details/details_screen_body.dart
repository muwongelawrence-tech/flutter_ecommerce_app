import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product.dart';


class DetailsBody extends StatelessWidget{

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override

  Widget build(BuildContext context){

    // It provides us with total height and width.
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child : Column(
        children: <Widget>[

            SizedBox(
              height: size.height,
              child:Stack(
                children: <Widget>[
                   Container(
                     margin: EdgeInsets.only(top: size.height * 0.3),
                     height: 500,
                     decoration: const BoxDecoration(
                       color:Colors.white,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(24),
                         topRight: Radius.circular(24),
                       )
                     ),
                    
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                     child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                          
                           const Text("Office code " , style: TextStyle(color: Colors.white)),

                           Text(
                             product.title ,
                             style: Theme.of(context).textTheme.headline4!.copyWith(
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                             )
                           ),
                        
                        ],
                     )
                  ),

                ],

              )
            ),
        ],
      )
    );
  }
}