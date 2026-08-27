
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({required this.text,
   this.onTap,
    super.key,
  });
   String text;
    Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16)
              
        ),
        width: double.infinity,
        height: 60,
        
        child: Center(child: Text(text,style: TextStyle(
          color: Colors.white,
        ),)),
      ),
    );
  }
}
