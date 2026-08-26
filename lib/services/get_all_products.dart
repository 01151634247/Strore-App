import 'dart:convert';

import 'package:http/http.dart%20';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart'as http;

class GetAllProductService {

 Future <List<ProductModel>>getAllProducts()async{

     http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
     if(response.statusCode==200){
       List<dynamic>data=jsonDecode(response.body);
       
       List<ProductModel>productmodellist=[];
       for(int i=0; i<data.length;i++){
        productmodellist.add(ProductModel.fromJson(data[i]));
               
       }
       return productmodellist;    
     }else{
       throw Exception('there is aproblem with satatus code ${response.statusCode}');
     }
  }

}