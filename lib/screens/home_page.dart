
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  static String id='HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon:FaIcon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black, 
                
              ),),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('New Trend',style: TextStyle(color: Colors.black),),),
       body: Center(
         child:Stack(
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
              height: 130,
              width: 220,
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
                bottom: 90,
              child: Image.asset('assets/photo_2024-12-20_22-50-37.png',height: 100,width: 300,),
              ),        
           ],
         ),
       ),
    );
  }
}