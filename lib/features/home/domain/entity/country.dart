class Country {
  final String commonName;
  final String flagPng;
  final List<String>? capital;
  final String? region;
  final String? subregion;
  final double? area;
  final List<String>? timezones;
  final String cca2;
  final int population;

  Country({
    required this.commonName,
    required this.flagPng,
    required this.cca2,
    this.capital,
    this.region,
    this.subregion,
    this.area,
    this.timezones,
    required this.population,
  });
}
