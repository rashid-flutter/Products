import 'package:api_integration2/model/product_model.dart';
import 'package:api_integration2/view/pages/detail_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => DetailPage(
                        product: product,
                      )));
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(product.thumbnail),
        ),
        title: Text(product.title),
        subtitle: Text(product.category),
        trailing: Text(product.price.toString()),
      ),
    );
  }
}
