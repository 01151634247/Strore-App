import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_text_filed.dart';

class UpadateProductPage extends StatelessWidget {
  const UpadateProductPage({super.key});

  static String id ='UpadateProductPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Update Product',style: TextStyle(
          color: Colors.black,
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            customTextField(
              hintText: 'product name',
            ),
            
            SizedBox(
              height: 10,
            ),
             customTextField(
              hintText: 'descriotin',
            ),
            
            SizedBox(
              height: 10,
            ),
             customTextField(
              hintText: 'price',
            ),
            SizedBox(
              height: 10,
            ),
             customTextField(
              hintText: 'image',
            ),
            
            SizedBox(
              height: 10,
            ),

            
           
        
          ],
        ),
      ),
    );
  }
}