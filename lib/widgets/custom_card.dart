
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/upadate_product_page.dart';

class custom_card extends StatelessWidget {
   custom_card({required this.productModel,
    super.key,
  });

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,UpadateProductPage.id,arguments:productModel);
        
      },
      child: Stack(
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
                   Text(productModel.title.substring(0,6),style: TextStyle(
                     color: Colors.grey,
                     fontSize: 18,
                   ),),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Text(productModel.price.toString(),style: TextStyle(
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
           child: Image.network(productModel.image,height: 100,width: 100,),
           ),        
        ],
      ),
    );
  }
}