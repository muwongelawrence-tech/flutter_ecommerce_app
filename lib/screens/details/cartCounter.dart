import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class CartCounter extends StatefulWidget{

  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState  createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {

  int numOfitems = 1;

  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[

       buildOutlineButton(
         icon: Icons.remove,
         press: () {
           
           if(numOfitems > 1){

              setState(() {
              numOfitems--;
              });
           }
           
         },
       ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding /2),
          child: Text(numOfitems.toString().padLeft(2, "0") , style: Theme.of(context).textTheme.headline6),
        ),

        buildOutlineButton(
         icon: Icons.add,
         press: () {

           setState(() {
              numOfitems++;
           });

         },
       ),

      ],
    );
  }

}

SizedBox buildOutlineButton({ required IconData icon , required  VoidCallback press }){
  return  SizedBox(

          width: 40,
          height: 32,
          child:  OutlineButton(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(13),
            ),
            onPressed: press ,
            child:  Icon(icon),
          ),
        );
}