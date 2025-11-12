import 'package:hive/hive.dart';
import '../../../home/domain/entity/country_summary.dart';

part 'country_summary_hive_model.g.dart';

@HiveType(typeId: 2)
class CountrySummaryHiveModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String flag;

  @HiveField(2)
  final String cca2;

  @HiveField(3)
  final int population;

  CountrySummaryHiveModel({
    required this.name,
    required this.flag,
    required this.cca2,
    required this.population,
  });

  CountrySummary toEntity() => CountrySummary(
    name: name,
    flag: flag,
    cca2: cca2,
    population: population,
  );

  factory CountrySummaryHiveModel.fromEntity(CountrySummary entity) {
    return CountrySummaryHiveModel(
      name: entity.name,
      flag: entity.flag,
      cca2: entity.cca2,
      population: entity.population,
    );
  }
}
