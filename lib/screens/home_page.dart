import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


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
       body:Padding(
         padding: const EdgeInsets.only(left: 16,right: 16,top: 70),
         child: FutureBuilder<List<ProductModel>>(
          future: GetAllProductService().getAllproducts(),
          builder:(context,snapshot){      
          if (snapshot.hasData) {
           List<ProductModel> products=snapshot.data!;
            return GridView.builder(
            clipBehavior: Clip.none,
            itemCount: products.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 100,
              childAspectRatio:1.4 ,
              ), 
                     itemBuilder: (context,index){
            return custom_card(productModel: products[index],);
                     }
                     );
          }else{
            return Center(child: CircularProgressIndicator());
          }

          }
          ),
       ),
    );
  }
}

