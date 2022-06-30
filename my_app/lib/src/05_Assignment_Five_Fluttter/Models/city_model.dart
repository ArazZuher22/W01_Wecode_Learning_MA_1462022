class CityModel {

  final int id;
  final String cityName;
  String? details;
  final String cityImage;

  CityModel({

    required this.id,
    required this.cityName,
    this.details,
    required this.cityImage,

  });

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
        id: map["id"],
        cityName: map["city_name"],
        details: map["details"],
        cityImage: map["city_image"],
        );
  }
}
