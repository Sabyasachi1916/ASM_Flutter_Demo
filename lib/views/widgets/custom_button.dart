import 'dart:ffi';
import 'dart:ui';

import 'package:ams/consts/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  

  const CustomButton({super.key, required this.buttonText,
      required this.buttonColor,
      required this.onPress, required this.hasArrow});
  final String buttonText;
  final Color buttonColor;
  final void Function()? onPress;
  final bool hasArrow;
  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 44.0,
          decoration: BoxDecoration(
            color: Constants.buttonColor,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Constants.buttonColor,
                offset: const Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              )
            ]
          ),
          child: InkWell(
            onTap: onPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                  Text(buttonText, style: TextStyle(color: Colors.white, fontSize: 16),),
                  SizedBox(width: hasArrow == true ? 20 : 0,),
                 
                    hasArrow? const Icon(Icons.arrow_forward , color: Colors.white,) : SizedBox(width: 0,)
               
                
                  
                  
              ]
          
            ),
          ),
        );
      
  }
}