
import 'package:app/pallete.dart';
import 'package:flutter/material.dart';


class FeatureBox extends StatelessWidget {

  final Color color;
  final String Headertext;
  final String descriptionText;

  const FeatureBox({super.key , required this.color , required this.Headertext, required this.descriptionText});
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(
        vertical:10,
        horizontal: 35 
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 15,bottom: 20),
        child: Column(
          children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(Headertext, style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
          ),

        const SizedBox(height: 3,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(descriptionText , style: TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.blackColor,
              fontSize: 14,
            ),),
          ),
        ]),
      ),
    );
  }
}