import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:martverse_app_api/Post_Martverse_APi/dashboard.dart';

class LoginApi extends StatefulWidget {
  const LoginApi({super.key});

  @override
  State<LoginApi> createState() => _LoginApiState();
}

class _LoginApiState extends State<LoginApi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, String password) async {
    try {
      Response response = await post(
          Uri.parse(
              "https://marktestapp.pythonanywhere.com/api/auth/rider/login/"),
          body: {
            "email": email,
            "password": password,
          });
      print("Status Code :${response.statusCode}");
      // print(response.body);
      if (response.statusCode == 200) {
        print("account Login Successfully");
      } else {
        print("account Login faileds");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Api'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "email",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "password",
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("Sign in")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
