import 'package:eccomerce/Providers/Auth_Provider.dart';
import 'package:eccomerce/Widgets/CustomBox.dart';
import 'package:eccomerce/serviecs/Auth_Servies.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loginpage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
  final prologin=Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("Login"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  label: "Email",
                  icon: Icons.email,
                  
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || !value.contains('@')) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 13,),
                CustomTextFormField(
                  label: "Password",
                  icon: Icons.lock,
                  controller: _passwordController,
                  
                  validator: (value) {
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
            prologin.Login(email: _emailController.text, pasword: _passwordController.text);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
