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
    var response = await http.get(
        Uri.https(
            'http://worldtimeapi.org/api/timezone/Europe/London', 'albums/1'),
        headers: {"Accept": "application/json"});
    Map data = jsonDecode(response.body);
    print(data);
  }

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
