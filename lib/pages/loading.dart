import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London/$url');
    Map data = jsonDecode(response.body);
    print(data);
  }


  Future<List<Time>> getRequest() async {
    //replace your restFull API here.
    String url = "http://worldtimeapi.org/api/timezone/Europe/London";
    final response = await http.get(url);

    var responseData = json.decode(response.body);

    //Creating a list to store input data;

  //Future<http.Response> fetchAlbum() {
  //return http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
  ///}

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Text("Loading screen"),
        ));
  }
}

//http://worldtimeapi.org/api/timezone/Europe/London
