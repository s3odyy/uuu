import 'package:eccomerce/Providers/Auth_Provider.dart';
import 'package:eccomerce/Screens/LoginPage.dart';
import 'package:eccomerce/Widgets/CustomBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signuppage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  final pro=Provider.of<AuthProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    label: "Name",
                    icon: Icons.person,
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 13),
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
                  SizedBox(height: 13),
                  CustomTextFormField(
                    label: "Password",
                    icon: Icons.lock,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return "Password must be > 6 ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 13),
                  CustomTextFormField(
                    label: "Contact",
                    icon: Icons.phone,
                    controller: _contactController,
                    validator: (value) {
                      if (value == null || value.length < 10) {
                        return "Enter a valid contact number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text("Sign Up"),
                    onPressed: () {
                    {
                    pro.signUp(email: _emailController.text, pasword: _passwordController.text, contact: _contactController.text, name: _nameController.text);
                    }
                   },
                  ),
                   SizedBox(height: 10),
                  TextButton(
                    child: Text("Already have an account? Login"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//id , name , price , descrption , image 