class CountryDetails {
  final String name;
  final String flag;
  final int population;
  final List<String> capital;
  final String region;
  final String subregion;
  final double area;
  final List<String> timezones;

  CountryDetails({
    required this.name,
    required this.flag,
    required this.capital,
    required this.region,
    required this.subregion,
    required this.area,
    required this.timezones,
    required this.population,
  });
}
