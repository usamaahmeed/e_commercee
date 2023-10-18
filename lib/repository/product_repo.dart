import 'package:dio/dio.dart';
import 'package:e_commerce/models/products_model.dart';

class ProductRepo {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
    ),
  );
  Future<List<Datum>> getProduct() async {
    final res = await dio.get('products');
    final product = Products.fromJson(res.data);
    final productData = product.data.data;
    return productData;
  }
}
