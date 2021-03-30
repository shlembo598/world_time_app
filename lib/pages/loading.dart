import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    //Make request
    Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/Europe/London"));
    Map data = jsonDecode(response.body);
    //print(data);
    //get properties from data
    String dateTime = data["datetime"];
    String offset = data["utc_offset"];
    print(dateTime);
    print(offset);
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}


