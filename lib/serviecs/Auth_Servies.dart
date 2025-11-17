import 'package:dio/dio.dart';
import 'package:eccomerce/Models/AuthModel.dart';

class AuthServies {

 static Dio dio=Dio();

 static Future<Authmodel>Login(String email,String pasword)async{
 
 try{
  Response response=await dio.post("https://ecommerceflutter2.runasp.net/api/Customer/login",



    data:{ "email":email,"pasword":pasword}
  );

  return Authmodel.fromJeson(response.data);

 } on DioException catch (ErrorAPi)
{
  throw Exception("Error SignUp :${ErrorAPi.message}");
}
catch (AnotherError)
{
  throw Exception("Another Error${AnotherError}");
}
 }
  

//

static Future<Authmodel>SignUp(String email,String pasword,String contact,String name)async{

try

{

   Response response=await dio.post("https://ecommerceflutter2.runasp.net/api/Customer/signup",

    data:{ "email":email,"pasword":pasword,"name":name,"contact":contact}
  );

  return Authmodel.fromJeson(response.data);

} on DioException catch (ErrorAPi)
{
  throw Exception("Error SignUp :${ErrorAPi.message}");
}
catch (AnotherError)
{
  throw Exception("Another Error${AnotherError}");
}

}
 



}