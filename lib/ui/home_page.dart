import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;

  int _offset = 0;

  _getGifs() async {
    http.Response response;

    if (_search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=gNp2RjS2zs032jPNHXQvENTY6BLbFjmu&limit=20&rating=G");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=gNp2RjS2zs032jPNHXQvENTY6BLbFjmu&q=$_search&limit=20&offset=75&rating=G&lang=en");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
