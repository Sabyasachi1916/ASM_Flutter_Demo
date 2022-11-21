import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,  required this.title});
  final String title;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode _focus = FocusNode();

  TextEditingController _controller = TextEditingController();
  
  
  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }
  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _focus = _focus;
    });
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:_focus.hasFocus == true ?  Colors.blueAccent : Colors.black38)
        ),
        child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0),
                  child: TextField(
                        obscureText: widget.title == "Password" ? true : false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: widget.title,
                          hintText: widget.title,
                          
                        ),
                        focusNode: _focus,
                      ),
                ),
              ],
            ),
         
      ),
    );
  }
}