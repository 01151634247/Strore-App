
import 'package:flutter/material.dart';
class customTextField extends StatelessWidget {
   customTextField({
    super.key, this.hintText,
    this.onChanged,
    this.inputType
  });
  String? hintText;
  Function(String)? onChanged;
  TextInputType ?inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:inputType ,
      onChanged:onChanged ,
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