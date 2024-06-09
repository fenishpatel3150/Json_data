class Modeldata {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;

  Address address;
  Geo geo;
  Company company;
  Modeldata({
    required this.company,
    required this.geo,
    required this.address,
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory Modeldata.fromJson(Map json) {
    return Modeldata(
      company: json['company'],
      geo: json['geo'],
      address: json['address'],
      id: json['id'],
      name: json['name'],
      username: json['username'],
      phone: json['phone'],
      website: json['phone'],
      email: json['emaol'],
    );
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? Zipcode;

  Address({this.street, this.suite, this.city, this.Zipcode});

  factory Address.fromjson(Map Json) {
    return Address(
      street: Json['street'],
      suite: Json['suite'],
      city: Json['city'],
      Zipcode: Json['Zipcode'],
    );
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  factory Geo.fromjson(Map Json) {
    return Geo(
      lat: Json['lat'],
      lng: Json['lng'],
    );
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromjson(Map Json) {
    return Company(
      name: Json['name'],
      catchPhrase: Json['catchPhrase'],
      bs: Json['bs'],
    );
  }
}
