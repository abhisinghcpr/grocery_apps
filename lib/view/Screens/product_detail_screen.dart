import 'package:flutter/material.dart';
import 'package:grocery_apps/utils/extensions/app_extension.dart';
import 'package:grocery_apps/view/main_layout.dart';
import '../../model/product_model.dart';
import '../../utils/app_widgets/custom_app_bar.dart';
import '../../utils/colors/app_colors.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: customAppBar(context: context, title:  Text("${product.title}",style: TextStyle(color: white),),centerTitle:true ),

      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "${product.id}",
                  child: ClipRRect(
                    borderRadius: 30.borderRadius,
                    child: Image.network(
                      "${product.image}",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${product.title}",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "${product.description}",
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
