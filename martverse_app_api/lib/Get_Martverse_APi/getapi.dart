import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Get_model/getmodel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Future<PostModel> getApi() async {
    final resonse = await http.get(
      Uri.parse("https://marktestapp.pythonanywhere.com/api/my/profile/"),
      headers: {
        'authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY2NzE2MDIwLCJpYXQiOjE2NjY2Mjk2MjAsImp0aSI6IjQ1ZmJmMzAyOWU5YzQzNjY4N2E4ZTI5N2NiOTg0NzQyIiwidXNlcl9pZCI6Ijc1ZGY1NDFlLTQ4NDMtNDZiYS1iMjg0LTAxNDAzNzI1NDZmZCJ9.I5psr0adDWDEqTFan8XDN8GMEe55WIBdSGpU2-XOTpQ',
      },
    );
    var data = jsonDecode(resonse.body.toString());

    print(resonse.statusCode);
    print(resonse.body);

    if (resonse.statusCode == 200) {
      PostModel postModel = PostModel.fromJson(data);
      print(postModel.firstName);
      return postModel;
    } else {
      return PostModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GET API")),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: TextButton(
              onPressed: () async {
                print("before");
                await getApi();
                print("After");
              },
              child: Text("Hello"),
            ),
          ),
        ]));
  }
}
