import 'package:api_integration2/services/api_services.dart';
import 'package:api_integration2/view/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: FutureBuilder(
        future: ApiServices().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemBuilder: (context, index) => ProductCard(
                      product: snapshot.data![index],
                    ));
          } else if (snapshot.hasError) {
            print(snapshot.stackTrace);
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
