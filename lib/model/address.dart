//  {
//       "street": "Kulas Light",
//       "suite": "Apt. 556",
//       "city": "Gwenborough",
//       "zipcode": "92998-3874",
//       "geo": {
//         "lat": "-37.3159",
//         "lng": "81.1496"
//       }
//     }

import 'package:dio/dio.dart';

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,

  });
   static Address toPost(Map json) {
    print(json);

    

    return Address(
        street: json['street'], suite: json['suite'],city: json['city'], zipcode: json['zipcode'],
    );
  }

}


class Geo {
  String lat;
  String lng;
   Geo(
      {required this.lat,
      required this.lng,});
    // "lat": "-37.3159",
    // "lng": "81.1496"

    static Geo toPost(Map json) {
    print(json);

    

    return Geo(
        lat: json['lat'], lng: json['lng']
    );
  }
      
}