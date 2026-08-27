import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';


class GetAllProductService {

 Future <List<ProductModel>>getAllProducts()async{

      List<dynamic>data= await Api().get(url: 'https://fakestoreapi.com/products');
       List<ProductModel>productmodellist=[];
       for(int i=0; i<data.length;i++){
        productmodellist.add(ProductModel.fromJson(data[i]));
               
       }
       return productmodellist;     
  }
}