import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


 
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: (){}),
          
          actions: <Widget> [
           IconButton(
             icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,),
             onPressed: (){}, 
          ),
          IconButton(
             icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,),
             onPressed: (){}, 
          ),

          const SizedBox( width: kDefaultPadding / 2,)

          ]
        ),

        body : const Body(),

    );
  }
}

