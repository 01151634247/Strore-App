import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class CatgoriesService {

  Future <List<ProductModel>>getCatgoriesProduct({required String catgoryName})async{


      
       List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products/category/$catgoryName');
         
       
           List<ProductModel>productmodellist=[];
           for(int i=0; i<data.length;i++){
            productmodellist.add(ProductModel.fromJson(data[i]));
                   
           }
           return productmodellist;    
       
    
  }


  }



