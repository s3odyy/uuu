import 'package:eccomerce/Models/AuthModel.dart';
import 'package:eccomerce/serviecs/Auth_Servies.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier{

Authmodel ?auth;

Future<bool>Login({required String email,required String pasword})async
{
  auth=await AuthServies.Login(email, pasword);
  notifyListeners();
  return true;
}

//

Future<bool>signUp({required String email,required String pasword,required String contact,required String name})async
{
  auth=await AuthServies.SignUp(email, pasword,contact,name);
  notifyListeners();
  return true;
}

}