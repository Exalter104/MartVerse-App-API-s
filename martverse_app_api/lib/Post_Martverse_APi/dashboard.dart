import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:martverse_app_api/Get_Martverse_APi/getapi.dart';
import 'package:martverse_app_api/activeorder.dart';
import 'package:martverse_app_api/logout.dart';
import 'package:martverse_app_api/orderdetailedlist.dart';
import 'package:martverse_app_api/orderlist.dart';
import 'package:martverse_app_api/orderstatus.dart';
import 'package:martverse_app_api/passwordchange.dart';
import 'package:martverse_app_api/profileinformation.dart';
import 'package:martverse_app_api/profileupdate.dart';

import '../orderlistapicall.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Dashboard")),
          backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "All API's Of MartVerse",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homescreen()));
                      },
                      child: const Text("Active Order"))),
            ),
// Active Order
            // const SizedBox(
            //   height: 10,
            // ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileInformation()));
                },
                child: const Text("Profile Information")),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Orderlist1()));
                },
                child: const Text("Order List")),
//Order List
            // const SizedBox(
            //   height: 20,
            // ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderDetailedList()));
                },
                child: const Text("Order Detailed List")),
//Order Detailed  Information
            // const SizedBox(
            //   height: 20,
            // ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderStatusChanges()));
                },
                child: const Text("Order Status  Changes")),
//order Status  Changes
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileUpdate()));
                },
                child: const Text("Profile Update")),
// Profile Update
            // const SizedBox(
            //   height: 20,
            // ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PasswordChanges()));
                },
                child: const Text("Password Changes")),
// Password Changes
            // const SizedBox(
            //   height: 20,
            // ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Logout()));
                },
                child: const Text("Logout")),
          ],
        ));
  }
}
