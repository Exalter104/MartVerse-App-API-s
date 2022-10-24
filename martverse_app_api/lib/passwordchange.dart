import 'package:flutter/material.dart';
import 'package:http/http.dart';

//INFO password change class
class PasswordChanges extends StatefulWidget {
  const PasswordChanges({super.key});

  @override
  State<PasswordChanges> createState() => _PasswordChangesState();
}

//STATE state of this function
class _PasswordChangesState extends State<PasswordChanges> {
  void login(String email, String password) async {
    try {
      Response response = await put(
        Uri.parse(
            "https://marktestapp.pythonanywhere.com/api/my/password/change/"),
        body: {
          "old_password": "0987654343",
          "new_password": "fgbghnghn",
        },
        headers: {
          'authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY2NzE2MDIwLCJpYXQiOjE2NjY2Mjk2MjAsImp0aSI6IjQ1ZmJmMzAyOWU5YzQzNjY4N2E4ZTI5N2NiOTg0NzQyIiwidXNlcl9pZCI6Ijc1ZGY1NDFlLTQ4NDMtNDZiYS1iMjg0LTAxNDAzNzI1NDZmZCJ9.I5psr0adDWDEqTFan8XDN8GMEe55WIBdSGpU2-XOTpQ',
        },
      );

      // print(response.body);

      if (response.statusCode == 200) {
      } else {}
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GET API")),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: TextButton(
              onPressed: () async {
                login("", "");
              },
              child: const Text("Hello"),
            ),
          ),
        ]));
  }
}
