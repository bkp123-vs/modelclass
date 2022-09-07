// {
//     "id": 1,
//     "name": "Leanne Graham",
//     "username": "Bret",
//     "email": "Sincere@april.biz",
//     "address": {
//       "street": "Kulas Light",
//       "suite": "Apt. 556",
//       "city": "Gwenborough",
//       "zipcode": "92998-3874",
//       "geo": {
//         "lat": "-37.3159",
//         "lng": "81.1496"
//       }
//     },
//     "phone": "1-770-736-8031 x56442",
//     "website": "hildegard.org",
//     "company": {
//       "name": "Romaguera-Crona",
//       "catchPhrase": "Multi-layered client-server neural-net",
//       "bs": "harness real-time e-markets"
//     }
//   }

import 'address.dart';
import 'company.dart';

class User {

  final Address address;
  final Company company;

   String id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  

  User({required this.address, required this.company,required this.id,required this.name,required this.username,
  required this.email,required this.phone,required this.website});
  

   
//// Json serialization
  static User toPost(Map json) {


    return User(
        id: json['id'], name: json['name'], username: json['username'],
        email: json['email'], phone: json['phone'], website: json['website'],
        address: json['address'],company: json['conmpany']
        
        );
  }
}