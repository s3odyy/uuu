import 'package:dio/dio.dart';
import 'package:eccomerce/Models/ProductModel.dart';

class ProductServies {

static Dio dio=Dio();

static Future<Productmodel>GetData()async{
try
{
  Response response=await dio.get("https://ecommerceflutter2.runasp.net/api/Product/all");
return Productmodel.fromJeson(response.data);
}
on DioException catch(ErrorApi){
  throw Exception(ErrorApi.message);
}
catch(anthoerError){
  throw Exception(anthoerError);
}

}

}