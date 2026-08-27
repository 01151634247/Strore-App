import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {


   Future<ProductModel>updateProduct({
  required  String title,
  required  String price,
 required   String dec,
 required   String image,
  required  String catgory,
  })async{
  Map<String,dynamic>data =await Api().put(url:'https://fakestoreapi.com/products/', 
    body: {
    'title':title,
'price':price,
'description':dec ,
'image': image,
'category': catgory,
    },
  );
    return ProductModel.fromJson(data);
  }

  
  





}