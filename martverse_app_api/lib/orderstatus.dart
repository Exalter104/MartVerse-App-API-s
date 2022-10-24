import 'package:flutter/material.dart';

class OrderStatusChanges extends StatefulWidget {
  const OrderStatusChanges({super.key});

  @override
  State<OrderStatusChanges> createState() => _OrderStatusChangesState();
}

class _OrderStatusChangesState extends State<OrderStatusChanges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Order Status Changes")),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Order Status Changes",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
