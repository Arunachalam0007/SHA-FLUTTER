import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String url;
  NetworkHelper({@required this.url});

  Future getResponseData() async{
    http.Response response = await http.get(this.url);
    if(response.statusCode == 200){
      String responseBody = response.body;
      return jsonDecode(responseBody);
    } else {
      print(response.statusCode);
      print(response.statusCode);
    }
  }

}