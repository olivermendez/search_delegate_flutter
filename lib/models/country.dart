class CountryModelResponse {
  CountryModelResponse({
    this.alpha2Code,
    this.capital,
    this.subregion,
    this.region,
    this.population,
    this.name,
    this.flag,
  });

  final String? name;
  final String? alpha2Code;
  final String? capital;
  final String? subregion;
  final String? region;
  final String? population;
  final String? flag;

  factory CountryModelResponse.fromJson(Map<String, dynamic> json) =>
      CountryModelResponse(
        name: json['name'],
        capital: json['capital'],
        subregion: json['subregion'],
        region: json['region'],
        population: json['population'],
        flag: json['flag'],
      );
}
