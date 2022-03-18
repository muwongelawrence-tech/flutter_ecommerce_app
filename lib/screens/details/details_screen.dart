import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/screens/details/details_screen_body.dart';


class DetailsScreen extends StatelessWidget{
   
final Product product;
   
const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: product.color,

      appBar: buildAppBar(context),

      body:DetailsBody(product: product),

    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
          backgroundColor: product.color,
          elevation: 0,
          leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg", color:Colors.white),
             onPressed: () => Navigator.pop(context)),

          actions: <Widget> [
                IconButton(
                  icon: SvgPicture.asset("assets/icons/search.svg", color: Colors.white),
                  onPressed: (){}, 
                ),

                IconButton(
                  icon: SvgPicture.asset("assets/icons/cart.svg", color:Colors.white),
                  onPressed: (){}, 
                ),

                const SizedBox( width: kDefaultPadding / 2,)

          ],   
      );
  }

}