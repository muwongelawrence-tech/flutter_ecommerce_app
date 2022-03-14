import 'package:flutter/material.dart';
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
                    
                   )
                ],

              )
            ),
        ],
      )
    );
  }
}