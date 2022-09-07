import 'package:flutter/material.dart';
import 'package:http/http.dart' as client;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  Map videos = {};
  

  @override
  void initState() {
    super.initState();
    fetchDataFrompix();
  }
  get(){}
  
  fetchDataFrompix()  async{
    final endpoint = "https://pixabay.com/api/videos/?key=29746314-a1c2c5af32f4db0836b39d4c0&q=yellow+flowers&pretty=true";
    final Uri url = Uri.parse(endpoint);
    try{
        final response = await client.get(url);

             print(response.body);

    setState(() {
      
    });

    }catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(

    );
    
  }

}