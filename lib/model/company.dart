// {
//       "name": "Romaguera-Crona",
//       "catchPhrase": "Multi-layered client-server neural-net",
//       "bs": "harness real-time e-markets"
//     }

class Company {

  String name;
  String catchPhrase;
  String bs;
  
   Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,


  });
   static Company toPost(Map json) {
    print(json);

    

    return Company(
        name: json['name'], catchPhrase: json['catchPhrase'],bs: json['bs'],
    );
  }
}