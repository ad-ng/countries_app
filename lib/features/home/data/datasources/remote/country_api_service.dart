import 'package:countries_app/core/dio_service.dart';
import 'package:countries_app/features/home/data/models/country_model.dart';
import 'package:dio/dio.dart';

class CountryApiService {
  final Dio _dio = DioService.instance.dio;

  Future<List<CountryModel>> fetchAllCountries() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/v3.1/all?fields=name,flags,population,cca2',
      );

      final dataJson = response.data;

      if (dataJson != null) {
        return dataJson
            .map((json) => CountryModel.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Expected a list but got ${dataJson.runtimeType}');
      }
    } on DioException catch (e) {
      throw Exception('Something went wrong: $e');
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
}
