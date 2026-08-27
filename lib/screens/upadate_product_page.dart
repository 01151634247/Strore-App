import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_filed.dart';

class UpadateProductPage extends StatelessWidget {
   UpadateProductPage({super.key});

  static String id ='UpadateProductPage';
  String?productName,dec,image,price;
  @override
  Widget build(BuildContext context) {
    ProductModel productModel=ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Update Product',style: TextStyle(
          color: Colors.black,
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              customTextField(
                onChanged: (data) {
                  productName=data;
                  
                },
                hintText: 'product name',
              ),
              
              SizedBox(
                height: 10,
              ),
               customTextField(
                onChanged: (data) {
                  dec=data;
                },
                hintText: 'descriotin',
              ),
              
              SizedBox(
                height: 10,
              ),
               customTextField(
              inputType: TextInputType.numberWithOptions(),
                 onChanged: (data) {
                  price=data;
                },
                hintText: 'price',
              ),
              SizedBox(
                height: 10,
              ),
               customTextField(
                onChanged: (data) {
                  image=data;
                  
                },
                hintText: 'image',
              ),
              
              SizedBox(
                height: 50,
              ),
               CustomButton(
                onTap: () {
                  UpdateProduct().updateProduct(title: productName!, price:price! , dec: dec!, image: image!, catgory:productModel.toString());
                },
                text: 'Update'),
          
             
          
            ],
          ),
        ),
      ),
    );
  }
}