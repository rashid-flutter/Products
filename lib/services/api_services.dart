import 'package:api_integration2/core/exception/api_exception/failed_api.dart';
import 'package:api_integration2/model/product_model.dart';
import 'package:http/http.dart';

class ApiServices {
  final Client client = Client();
  Future<List<ProductModel>> getAllProducts() async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    try {
      Response response = await client.get(url);
      if (response.statusCode == 200) {
        return productModelFromjson(response.body);
      } else {
        throw ApiRequestFailedException(statuscode: response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}
