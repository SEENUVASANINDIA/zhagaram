// ignore_for_file: non_constant_identifier_names


import 'package:flutter/material.dart';


import 'package:stock/stockscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STOCK HOME PAGE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyAppGet()));
                },
                child: const Text("click to start"))
          ],
        ),
      ),
    );
  }
}

//Future<Stockdata> fetchStockData() async {
//  final response = await http.get(Uri.parse(
//      'https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en'));
//
//  if (response.statusCode == 200) {
//    // If the server did return a 200 OK response,
//    // then parse the JSON.
//    return Stockdata.fromJson(jsonDecode(response.body));
//  } else {

  
//    // If the server did not return a 200 OK response,
//    // then throw an exception.
//    throw Exception('Failed to load Stockdata');
//  }
//}
//
// class Stockdata {
//  String Sector = '';
//  String Industry = '';
//  late num MCAP;
//  late num EV;
//  late num BookNavPerShare;
//  late num TTMPE;
//  late num PEGRatio;
//  late num Yield;
//
//  Stockdata({
//    required this.Sector,
//    required this.Industry,
//    required this.MCAP,
//    required this.EV,
//    required this.BookNavPerShare,
//    required this.TTMPE,
//    required this.PEGRatio,
//    required this.Yield,
//  });
//}
//
//factory Stockdata.fromJson(Map<String, dynamic> json) {
//    return Stockdata(
//      Sector: json['Sector'],
//      Industry: json['Industry'],
//      MCAP: json['MCAP'],
//      EV: json['EV'],
//      BookNavPerShare: json['BookNavPerShare'],
//      TTMPE: json['TTMPE'],
//      PEGRatio: json['PEGRatio'],
//      Yield: json['Yield'],
//
//    );
//  }
//
//
//class Stock extends StatefulWidget {
//  const Stock({Key? key}) : super(key: key);
//
//  @override
//  State<Stock> createState() => _StockState();
//}
//
//class _StockState extends State<Stock> {
//  late Future<Stockdata> futureStockdata;
//
//  @override
//  void initState() {
//    super.initState();
//    futureStockdata = fetchStockdata();
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('Stock Graph'),
//        centerTitle: true,
//        leading: IconButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          icon: const Icon(Icons.arrow_back),
//        ),
//      ),
//
//      body: Center(child: FutureBuilder<Stockdata>(future: futureStockdata,builder: ((context, snapshot) {
//if(snapshot.hasData){
//  return(MaterialApp(home: Scaffold(body: Center(child: Column(children: const [Text('sucess')],),)),));
//}        
//      }),),),
//    );
//  }
//}
//