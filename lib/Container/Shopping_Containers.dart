// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, prefer_initializing_formals, duplicate_ignore, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

  class ShoppingContainer extends StatelessWidget{
    late Color colorOfcontainer;
    late String text;
    late IconData icon;
    late Color colorOficon;
    late Color ColorOftext;
    late double radis;
    ShoppingContainer(Color colorOfcontainer,String text,IconData icon,Color ColorOftext,Color colorOficon,double radis){
      // ignore: prefer_initializing_formals
      this.text=text;
      this.colorOfcontainer=colorOfcontainer;
      this.icon=icon;
      this.ColorOftext=ColorOftext;
      this.colorOficon=colorOficon;
      this.radis=radis;
    }
      @override
      Widget build(BuildContext context) {
          return Container(
             padding:EdgeInsets.all(17),
                margin: EdgeInsets.only(left: 17,top:17),
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: this.colorOfcontainer,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: this.radis,
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Icon(this.icon,
                      color: this.colorOficon,
                      size: 68,
                      ),
                      SizedBox(height: 10,),
                    Text(this.text,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: this.ColorOftext,
                    ),
                    
                    ),
                    
                  ],
                )
              );
      }
  }