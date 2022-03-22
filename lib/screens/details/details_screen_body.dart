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
                     padding: EdgeInsets.only(
                       top: size.height * 0.12 , 
                       left : kDefaultPadding,
                       right: kDefaultPadding,
                     ),
                     height: 500,
                     decoration: const BoxDecoration(
                       color:Colors.white,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(24),
                         topRight: Radius.circular(24),
                       )
                     ),

                      child: Column(
                         children: <Widget>[
                            
                            Row(
                              children: <Widget>[
                                   Column(
                                     children: <Widget>[ 
                                       const Text("color"),

                                       Container(
                                         margin: const EdgeInsets.only(
                                           top: kDefaultPadding / 4,
                                           right: kDefaultPadding /2
                                        ),
                                         padding: const EdgeInsets.all(2.5),
                                         height:24,
                                         width:24,
                                         decoration:BoxDecoration(
                                           shape: BoxShape.circle,
                                          border: Border.all(
                                           color: const Color(0xFF356C95),
                                        )),

                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF356C95),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                       )
                                    ],
                                   )
                              ],
                            ),

                         ],
                      )

                    
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

                           const SizedBox(width: kDefaultPadding),

                           Row(
                             children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                      children: [
                                       const  TextSpan(text: "Price\n"),

                                        TextSpan(
                                            text:"\$${product.price}",
                                            style: Theme.of(context).textTheme.headline4!.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            )
                                        )
                                      ]
                                  )
                                ),

                                 Expanded(
                                    child: Image.asset(
                                        product.image,
                                        fit:BoxFit.fill,
                                    ),
                               ),

                             ],
                           ),

                           const SizedBox(width: kDefaultPadding),

                          
                        
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