import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as api;
import 'package:http_app/model/user.dart';

import '../model/post.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String data = "hawa kura";

  List<Post> posts = [];
  List<User> users = []; 

  @override
  void initState() {
    super.initState();
    fetchDataFromServer();
  }

  get() {}
  fetchDataFromServer() async {
    print("data fetch sarted");
    final endpoint = "https://jsonplaceholder.typicode.com/posts";

    final Uri url = Uri.parse(endpoint);

    final userpoint = "https://jsonplaceholder.typicode.com/users";
     final Uri userurl = Uri.parse(userpoint);


    try {
      final response = await api.get(url);

      final userresponse = await api.get(userurl);
      
      print("the status code is : ${response.statusCode}");

      print("the body is :");
      // print(response.body);
      data = response.body;
      setState(() {});
      final List decodedBody = json.decode(response.body);
      // ignore: unused_local_variable
      final List userBody = json.decode(userresponse.body);
      
      // posts = decodedBody;

      // posts = decodedBody
      //     .map<Post>(
      //       (e) => Post.convertJsontoPost(e),
      //     )
      //     .toList();

      posts = decodedBody.map<Post>(
        (e) {
          final converted = Post.toPost(e);
          print("Item converting");
          return converted;
        },
      ).toList();

      users = userBody.map<User>(
        (e){
          final convesion = User .toPost(e);
          return convesion;
        },
      ).toList();
    } catch (e) {
      print(e);
    }
    
     
  }

  @override
  Widget build(BuildContext context) {
    // print("build called");
    return Scaffold(
      
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          final post = posts[index];
          final user = users[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${index + 1}. ${post.title}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(post.body),
                SizedBox(height: 4),
                Text("${user.email}"),
                

          ],
            ),
          );
        },
      ),
      // Center(child: Text(data)),
    );
  }
}
