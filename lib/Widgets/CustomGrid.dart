import 'package:eccomerce/Models/ProductModel.dart';
import 'package:flutter/material.dart';

class Customgrid extends StatelessWidget {
final product pro;

  const Customgrid({required this.pro});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(errorBuilder: (context, error, stackTrace) => Icon(Icons.image),pro.image),
          // CircleAvatar(
          //   backgroundImage: NetworkImage(pro.image),
          // ),
          SizedBox(height: 5,),
          Text(pro.name),

         SizedBox(height: 5,),
          Text(pro.price.toStringAsFixed(1)),



          ],
        ),
      ),
    );
  }
}