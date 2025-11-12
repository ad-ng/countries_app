import 'package:countries_app/core/dio_service.dart';
import 'package:countries_app/features/home/data/models/country_details_model.dart';
import 'package:countries_app/features/home/data/models/country_summary_model.dart';
import 'package:dio/dio.dart';

class CountryApiService {
  final Dio _dio = DioService.instance.dio;

  Future<List<CountrySummaryModel>> fetchAllCountries() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/v3.1/all?fields=name,flags,population,cca2',
      );

      final dataJson = response.data;

      if (dataJson != null) {
        final countries = dataJson
            .map(
              (json) =>
                  CountrySummaryModel.fromJson(json as Map<String, dynamic>),
            )
            .toList();

        return countries;
      } else {
        throw Exception('Expected a list but got ${dataJson.runtimeType}');
      }
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }

  Future<List<CountrySummaryModel>> searchCountries(String searchQuery) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/v3.1/name/$searchQuery?fields=name,flags,population,cca2',
      );

      final dataJson = response.data;

      if (dataJson != null) {
        return dataJson
            .map(
              (json) =>
                  CountrySummaryModel.fromJson(json as Map<String, dynamic>),
            )
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

  Future<CountryDetailsModel> fetchOneCountryByCca2(String cca2) async {
    try {
      final response = await _dio.get(
        '/v3.1/alpha/$cca2?fields=name,flags,population,capital,region,subregion,area,timezones',
      );

      final dataJson = response.data;

      if (dataJson == null) {
        throw Exception('No data returned');
      }

      if (dataJson is Map<String, dynamic>) {
        return CountryDetailsModel.fromJson(dataJson);
      }

      throw Exception('Unexpected data format: ${dataJson.runtimeType}');
    } on DioException catch (e) {
      throw Exception('Something went wrong: $e');
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
}
