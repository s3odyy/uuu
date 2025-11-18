import 'package:eccomerce/Models/ProductModel.dart';
import 'package:eccomerce/serviecs/Product_Servies.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier{

Productmodel ?model;

Future<void>GetData()async{
  model=await ProductServies.GetData();
  notifyListeners();
}

}