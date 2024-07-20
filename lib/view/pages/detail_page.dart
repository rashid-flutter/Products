import 'package:api_integration2/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final ProductModel product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: PageView.builder(
                    itemCount: product.images.length,
                    itemBuilder: (context, index) {
                      return Image.network(product.images[index]);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(product.description),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("price is just: ${product.price}"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
