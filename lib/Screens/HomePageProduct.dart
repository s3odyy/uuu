import 'package:eccomerce/Providers/Product_Provider.dart';
import 'package:eccomerce/Widgets/CustomGrid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepageproduct extends StatelessWidget {
  const Homepageproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          final prooo = value.model?.listPro;
          if (prooo == null) {
            value.GetData();
            return Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
              itemCount: prooo.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              //  itemCount: 8,
              itemBuilder: (context, index) {
                // var prooo=value.model!.listPro[index];
                return Customgrid(pro: prooo[index]);
              },
            );
          }
        },
      ),
    );
  }
}
