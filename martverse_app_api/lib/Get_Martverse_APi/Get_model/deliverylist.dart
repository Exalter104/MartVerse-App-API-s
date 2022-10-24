// To parse this JSON data, do
//
//     final deliverylist = deliverylistFromJson(jsonString);

import 'dart:convert';

Deliverylist deliverylistFromJson(String str) =>
    Deliverylist.fromJson(json.decode(str));

String deliverylistToJson(Deliverylist data) => json.encode(data.toJson());

class Deliverylist {
  Deliverylist({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  int count;
  dynamic next;
  dynamic previous;
  List<dynamic> results;

  factory Deliverylist.fromJson(Map<String, dynamic> json) => Deliverylist(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<dynamic>.from(json["results"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x)),
      };
}
