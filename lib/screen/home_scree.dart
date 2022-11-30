// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, unused_import, avoid_web_libraries_in_flutter, prefer_const_constructors

// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:zhagaram/link/link.dart';

import 'home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ZHARAM'),
        ),
        body: Center(
          child: Column(
            children: [
              // Text('${silapathigaram}'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                  child: const Text('Click me')),
              ElevatedButton(
                  onPressed: () => const Homepage(),
                  child: const Text('Click me')),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()));
                },
                child: const Text('Click me'),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Homepage())));
                  },
                  icon: Icon(Icons.female_rounded),
                  label: Text('press'))
            ],
          ),
        ),
      ),
    );
  }
}



// ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const Homepage()));
              //     },
              //     child: const Text('Click me'))
 