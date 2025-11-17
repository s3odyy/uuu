import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final IconData icon;
  final FormFieldValidator validator;
  final TextEditingController controller;

  const CustomTextFormField({super.key, required this.label, required this.icon,required this.validator, required this.controller});

 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        suffix: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13)
        )
      ),
      validator: validator,
    );
  }
}
