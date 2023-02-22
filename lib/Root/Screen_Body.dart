// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Container/Shopping_Containers.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: 
        Text('Vistmate',
        style:
        GoogleFonts.kurale(
          textStyle: TextStyle(
            fontSize: 30,
            color: Colors.deepPurple,
            fontWeight: FontWeight.w900,
          )
        )
        )),
      ),
      body: 
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text('Choose your area',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          ),
          Row(
            children: [
            ShoppingContainer(Colors.deepPurple, 'Buying', Icons.shopping_cart_outlined, Colors.white, Colors.white, 20),
              SizedBox(width: 10,),
            ShoppingContainer(Colors.white, 'Selling', Icons.add_business_outlined, Colors.black, Colors.deepPurple, 0.4)
            ],
          ),
          Row(
            children: [
            ShoppingContainer(Colors.white, 'Trades', Icons.business_center_outlined, Colors.black, Colors.deepPurple, 0.4),
              SizedBox(width: 10,),
            ShoppingContainer(Colors.white, 'Videos', Icons.play_circle_fill_outlined, Colors.black, Colors.deepPurple, 0.4)
            ],
          ),
          Row(
            children: [
              ShoppingContainer(Colors.white, 'Details', Icons.discount_outlined, Colors.black, Colors.deepPurple, 0.4),
               SizedBox(width: 10,),
              ShoppingContainer(Colors.white, 'Case Study', Icons.book_online_outlined, Colors.black, Colors.deepPurple, 0.4)
            ],
          )
        ],
      ),
    );
    
  }
}