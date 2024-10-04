import 'dart:convert';
import 'package:http/http.dart';

import '../models/ProductsModel.dart';

class ProductService{
  static Future<List<ProductModel>> getProductList(int? id) async{
    List<ProductModel> list = [];
    try{
      print(Uri.parse("https://fakestoreapi.com/products/$id"));
      Response response = await get(Uri.parse("https://fakestoreapi.com/products"));
      print("==============response code::${response.statusCode}");
      if(response.statusCode == 200){
        List<dynamic> data = jsonDecode(response.body);
        list = data.map((e)=> ProductModel.fromJson(e)).toList();
        print("-----------lenght:${list.length}");
      }
    }
    catch(e){
      print(e.toString());
      print("-------------ProductService error--------------");
    }
    return list;
  }
}