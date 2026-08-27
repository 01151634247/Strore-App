
import 'package:flutter/material.dart';
class customTextField extends StatelessWidget {
   customTextField({
    super.key, this.hintText,
  });
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(
            color: Colors.white,
          ),

        )
        
       
      ),
      
    );
  }
}