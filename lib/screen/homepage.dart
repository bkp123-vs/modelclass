import 'dart:convert';

import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:http/http.dart' as api;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String data ="";
  @override

  void initState() {
    super.initState();
    fetchDataFromServer();
  }

  fetchDataFromServer() async{
    final endpoint = "https://jsonplaceholder.typicode.com/posts";

    final Uri url = Uri.parse(endpoint);

    try{
      
    final  response = await api.get(url);
    print("the StatusCode is ${response.statusCode}");

    print("the body is");
    print(response.body);
    data =response.body;
    setState(() {
      
    });
    final List decodedBody = json.decode(response.body);

    }catch(e){
      print(e);
    }  


  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Text(data),
    );
  }
}