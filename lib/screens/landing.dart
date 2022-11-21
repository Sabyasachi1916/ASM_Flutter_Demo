import 'package:ams/consts/constants.dart';
import 'package:ams/consts/image_constants.dart';
import 'package:ams/screens/login.dart';
import 'package:ams/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(),
          Image.asset(ImageConstants.logo),
          Center(
            
            child:
              Row(children: [
                           Text('AMS ', style: TextStyle(
                            color: Constants.buttonColor,
                            
                            fontSize: 26,
                            fontFamily: "Poppins", 
                            letterSpacing: -2
                          ),),
                           Text('SOLUTION', style: TextStyle(
                            color: Colors.black38,
                            fontSize: 26,
                            fontFamily: "Poppins", 
                            letterSpacing: -2
                          ))
                        ], mainAxisAlignment: MainAxisAlignment.center,
                )

          ,),
          Spacer(),
          Spacer(),
          Container(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(child: CustomButton(buttonText: "Get Started", buttonColor: Constants.buttonColor, onPress: ()=>{
              print('button clieked'),
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  )
            }, hasArrow: true,)),
          ),),
          Spacer(),
        ],
      ),
    ));
  
  }
}