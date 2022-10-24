import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Get_Martverse_APi/Get_model/orderhistory.dart';

class OrderDetailedList extends StatefulWidget {
  const OrderDetailedList({super.key});

  @override
  State<OrderDetailedList> createState() => _OrderDetailedListState();
}

class _OrderDetailedListState extends State<OrderDetailedList> {
  Future<DeliveryListHistory> OrderListHistory() async {
    final response = await http.get(
      Uri.parse(
          "https://marktestapp.pythonanywhere.com/api/my/delivery/history/"),
      headers: {
        'authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY2NzE2MDIwLCJpYXQiOjE2NjY2Mjk2MjAsImp0aSI6IjQ1ZmJmMzAyOWU5YzQzNjY4N2E4ZTI5N2NiOTg0NzQyIiwidXNlcl9pZCI6Ijc1ZGY1NDFlLTQ4NDMtNDZiYS1iMjg0LTAxNDAzNzI1NDZmZCJ9.I5psr0adDWDEqTFan8XDN8GMEe55WIBdSGpU2-XOTpQ',
      },
    );
    print(response.statusCode);
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      DeliveryListHistory deliveryListHistory =
          DeliveryListHistory.fromJson(data);
      return deliveryListHistory;
    } else {
      return DeliveryListHistory.fromJson(data);
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
                await OrderListHistory();
                print("After");
              },
              child: Text("Hello"),
            ),
          ),
        ]));
  }
}
