// ignore_for_file: deprecated_member_use_from_same_package, deprecated_member_use, unnecessary_new, prefer_collection_literals, non_constant_identifier_names, unused_local_variable

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Welcome() async {
  var response = await http.get(Uri.parse(
      'https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en'));
  var performance = jsonDecode(response.body);
  List<User> users = [];

  for( var v in performance){

    User user = User (v["id"],v["lable"],v["chartPeriodCode"],v["changePercent"]);
    users.add(user);
    return users; 
  
  }


}


class User {
  String id;
  String label;
  String chartPeriodCode;
  String changePercent;

  User({
    required this.id,
    required this.label,
    required this.chartPeriodCode,
    required this.changePercent,
  });








//Future<Welcome> fetchWelcome() async {
//  final response = await http.get(Uri.parse(
//      'https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en'));
//
//  if (response.statusCode == 200) {
//    // If the server did return a 200 OK response,
//    // then parse the JSON.
//    return Welcome.fromJson(jsonDecode(response.body));
//  } else {
//    // If the server did not return a 200 OK response,
//    // then throw an exception.
//    throw Exception('Failed to load Welcome');
//  }
//}
//
//class WelcomeList {
//  final List<Welcome> photos;
//
//  WelcomeList({
//    required this.photos,
//  });
//
//  factory WelcomeList.fromJson(List<dynamic> parsedJson) {
//// ignore: provide_deprecation_message
//    
//    List<Welcome> photos = new List <Welcome>();
//    photos = parsedJson.map((i) => photos.fromJson(i)).toList();
//
//    return new WelcomeList(photos: photos);
//  }
//}
//
//class Welcome {
//  String id;
//  String label;
//  String chartPeriodCode;
//  String changePercent;
//
//  Welcome({
//    required this.id,
//    required this.label,
//    required this.chartPeriodCode,
//    required this.changePercent,
//  });
//
//  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//        id: json["ID"].toString(),
//        label: json["Label"].toString(),
//        chartPeriodCode: json["ChartPeriodCode"].toString(),
//        changePercent: json["ChangePercent"].toDouble().toString(),
//      );
//
//  //Map<String, dynamic> toJson() => {
//  //      "ID": id,
//  //      "Label": label,
//  //      "ChartPeriodCode": chartPeriodCode,
//  //      "ChangePercent": changePercent,
//  //    };
//}
//
//class MyAppGet1 extends StatefulWidget {
//  const MyAppGet1({Key? key}) : super(key: key);
//
//  @override
//  State<MyAppGet1> createState() => _MyAppGet1State();
//}
//
//class _MyAppGet1State extends State<MyAppGet1> {
//  late Future<Welcome> futureWelcome; // In Dart, we use the late keyword to
//  //declare variables that will be initialized later
//
//  @override
//  void initState() {
//    super.initState();
//    futureWelcome = fetchWelcome();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//            title: const Text('second scrn'),
//            leading: IconButton(
//              onPressed: () {
//                Navigator.pop(context);
//              },
//              icon: const Icon(
//                Icons.arrow_back,
//              ),
//            )),
//        body: Center(
//          child: FutureBuilder<Welcome>(
//              future: futureWelcome,
//              builder: ((context, snapshot) {
//                if (snapshot.hasData) {
//                  return MaterialApp(
//                    home: Scaffold(
//                      body: Center(
//                        child: Column(
//                          children: [
//                            Text(snapshot.data!.id),
//                          ],
//                        ),
//                      ),
//                    ),
//                  );
//                } else if (snapshot.hasError) {
//                  return Text('${snapshot.error}');
//                }
//                return const CircularProgressIndicator();
//              })),
//        ),
//      ),
//    );
//  }
//}
//