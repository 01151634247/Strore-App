import 'package:store_app/helper/Api.dart';

class GetAllCatgories {

  Future<List<dynamic>>getAllCatgories()async{
    
     List<dynamic>data=await Api().get(url: 'https://fakestoreapi.com/products/categories');
       return data;
     }

  }
