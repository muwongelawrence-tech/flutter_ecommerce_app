import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';


class DetailsScreen extends StatelessWidget{
   final Product product;
   
const DetailsScreen({Key? key, required this.product}) : super(key: key);

 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: product.color,
    );
  }
}