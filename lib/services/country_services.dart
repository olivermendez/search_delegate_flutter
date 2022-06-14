import 'package:dio/dio.dart';

class CountryService {
  var dio = Dio();

  Future getCountryByName(String name) async {
    try {
      final url = 'https://restcountries.com/v3.1/name/$name';
      final response = await dio.get(url, options: Options(method: "GET"));
      print(response.data);

      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
