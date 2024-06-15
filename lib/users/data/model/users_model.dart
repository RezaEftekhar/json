import 'package:json_place_holder/users/domain/entity/users_entity.dart';

class UsersModel extends UsersEntity {
  UsersModel(
      {required super.id,
      required super.name,
      required super.username,
      required super.email,
      required super.address,
      required super.phone,
      required super.website,
      required super.company});

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        address: json['address'] != null
            ? AddressModel.fromJson(json['address'])
            : null,
        phone: json['phone'],
        website: json['website'],
        company: json['company'] != null
            ? CompanyModel.fromJson(json['company'])
            : null);
  }
  static List<UsersModel> fromList(List data) =>
      data.map((e) => UsersModel.fromJson(e)).toList();
}

class AddressModel extends AddressEntity {
  AddressModel(
      {required super.street,
      required super.suite,
      required super.city,
      required super.zipcode,
      required super.geo});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
        street: json['street'],
        suite: json['suite'],
        city: json['city'],
        zipcode: json['zipcode'],
        geo: json['geo'] != null ? GeoModel.fromJson(json['geo']) : null);
  }
}

class GeoModel extends GeoEntity {
  GeoModel({required super.lat, required super.lng});

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(lat: json['lat'], lng: json['lng']);
  }
}

class CompanyModel extends CompanyEntity {
  CompanyModel(
      {required super.name, required super.catchPhrase, required super.bs});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
        name: json['name'], catchPhrase: json['catchPhrase'], bs: json['bs']);
  }
}
