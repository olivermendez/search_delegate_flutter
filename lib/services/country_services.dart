import 'package:busquedas/models/country.dart';
import 'package:dio/dio.dart';

class CountryService {
  var dio = Dio();

  Future<CountryModelResponse?> getCountryByName(String name) async {
    try {
      final url = 'https://restcountries.com/v2/name/$name';
      Response response = await dio.get(url, options: Options(method: "GET"));
      CountryModelResponse countries =
          CountryModelResponse.fromJson(response.data);

      return countries;

      //print(data.name);
    } on DioError catch (e) {
      print(e);
      //return [];
    }
  }
}
