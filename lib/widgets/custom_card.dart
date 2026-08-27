
import 'package:flutter/material.dart';

class custom_card extends StatelessWidget {
  const custom_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
     clipBehavior: Clip.none,
      children: [
        Container(
         decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               blurRadius: 40,
               color: Colors.grey.withOpacity(0),
               spreadRadius: 0,
               offset: Offset(10, 10),
             ),
           ]
         ),
          child: Card(
           elevation: 10,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('HandBag LV',style: TextStyle(
                   color: Colors.grey,
                   fontSize: 18,
                 ),),
                 SizedBox(
                   height: 10,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text(r'$ 225',style: TextStyle(
                   fontSize: 18,
                 ),),
                 Icon(Icons.favorite,
                 color: Colors.red,),
             
                 ],),
               ],
             ),
           ),
          ),
        ),
    
        Positioned(
           bottom: 100,
           left: -30,
         child: Image.asset('assets/photo_2024-12-20_22-50-37.png',height: 100,width: 300,),
         ),        
      ],
    );
  }
}