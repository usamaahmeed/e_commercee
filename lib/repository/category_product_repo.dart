import 'package:dio/dio.dart';
import 'package:e_commerce/models/products_model.dart';

class CategoryProductRepo {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
    ),
  );

  Future<dynamic> getProducts(int id) async {
    final response = await dio.get('products?category_id=$id');
    final product = Products.fromJson(response.data);
    final productData = product.data.data;
    return productData;
  }
}
