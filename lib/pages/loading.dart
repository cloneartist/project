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
    Uri myUri = Uri.parse("https://worldtimeapi.org/api/timezone/Europe/London");
    Response response = await get(myUri);
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
