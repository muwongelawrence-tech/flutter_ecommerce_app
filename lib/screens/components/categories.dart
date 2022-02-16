
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

// we need a statefull widget for our categories.
class Categories extends StatefulWidget{
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = ["hand bag","jewelly","footwear","Dresses"];

  int selectedIndex = 0;


   @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),

      child : SizedBox(
      height: 25,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index)
      ),
      
    )
      );
  }

// building a custom widget of A Gesture Detector. 
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },

      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
            Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: selectedIndex == index ? kTextColor : kTextLightColor
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top : kDefaultPadding / 4),
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.black : Colors.transparent,
          ),

        ],
      ),

    ),
    );
  }

}