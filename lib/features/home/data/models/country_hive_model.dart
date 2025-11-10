import 'package:hive/hive.dart';

part 'country_hive_model.g.dart';

@HiveType(typeId: 0)
class CountryHiveModel extends HiveObject {
  @HiveField(0)
  String cca2;

  @HiveField(1)
  String commonName;

  @HiveField(2)
  String flagPng;

  @HiveField(3)
  String? capital;

  CountryHiveModel({
    required this.cca2,
    required this.commonName,
    required this.flagPng,
    this.capital,
  });
}
