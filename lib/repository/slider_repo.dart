import 'package:dio/dio.dart';
import 'package:e_commerce/models/slider_model.dart';

class SliderRepo {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
    ),
  );
  Future<List<Datum>> getSlider() async {
    final res = await dio.get('banners');
    final slider = Slider.fromJson(res.data);
    final sliderData = slider.data;
    return sliderData;
  }
}
