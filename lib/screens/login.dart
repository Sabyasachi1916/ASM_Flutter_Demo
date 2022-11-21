import 'package:ams/consts/constants.dart';
import 'package:ams/views/widgets/custom_button.dart';
import 'package:ams/views/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Please enter your login credentials', style: TextStyle(fontSize: 14, color: Colors.black87),),
              ),
              SizedBox(height: 50,),
              CustomTextField(title:'Email id'),
              CustomTextField(title: 'Password',),
              Row(children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: TextButton(onPressed: ()=>{}, style: ButtonStyle(foregroundColor:  MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Constants.buttonColor;
                        return Colors.black38; // Use the component's default.
                      },)), child: const Text('Forgot password ?'),),
                )
              ],),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: 
                    Container(
                      width: 150,
                      child: CustomButton(buttonText: 'Login', buttonColor: Constants.buttonColor, onPress: ()=>{
                        
                      }, hasArrow: false,),
                    ),
              ),
              SizedBox(height: 50,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?'),
                    GestureDetector(child: Text('Register', style: TextStyle(fontWeight: FontWeight.bold),), onTap: ()=> {
                      
                    },),
                  ],
                ),
              
            ],
          ),
        )));
  }
}