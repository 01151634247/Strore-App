import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';



class GetAllProductService {

 Future<List<ProductModel>> getAllproducts()async
{
  List <dynamic> data  = await Api().get(url:'https://fakestoreapi.com/products');
  List<ProductModel>productsList=[];
  for(int i=0;i<data.length;i++){
  productsList.add(ProductModel.fromJson(data[i]),
  );
  }
  
  return productsList;

}
}
