import 'package:dio/dio.dart';
import 'package:e_commerce/models/categories_model.dart';

class CategoryRepo {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
    ),
  );
  Future<List<Datum>> getCategories() async {
    final res = await dio.get('categories');
    final category = CategoriesModels.fromJson(res.data);
    final categoryData = category.data.data;
    return categoryData;
  }
}
