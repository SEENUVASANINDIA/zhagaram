
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: 
//       ,
//     );
//   }
// }











 

// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, avoid_print, unnecessary_string_interpolations, no_logic_in_create_state, unrelated_type_equality_checks

//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key, required String mail}) : super(key: key);
  var mail = '';
  var password = '';
  MyHomePage({mail, password});

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(mail: '$mail', password: '$password');
//_TestPageState(name: '$name');

}

class _MyHomePageState extends State<MyHomePage> {
  var loginEmail = TextEditingController();
  var loginpassword = TextEditingController();
  var mail = '', password = '';

  //const LoginPage({Key? key}) : super(key: key);
  // _MyHomePageState({required this.mail, required this.password});

  _MyHomePageState({mail, password});
  var a = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WELCOME TO SALOON COURSE'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 80.0, bottom: 20.0, left: 100.0, right: 100.0),
                child: TextField(
                  controller: loginEmail,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter Mail'),
                ),
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                child: TextField(
                  controller: loginpassword,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password'),
                ),
              ),

              //  ElevatedButton(
              //      onPressed: () {
              //        Navigator.push(
              //            context,
              //            MaterialPageRoute(
              //                builder: (context) => LoginPage(
              //                    mail: loginEmail.text,
              //                    password: loginpassword.text)));
              //      },
              //      child: const Text('LOGIN')),

              const SizedBox(
                height: 40.0,
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (mail == loginEmail && password == loginpassword) {
                        //return const TestPage1();
                        return LoginPage(
                            mail: loginEmail.text,
                            password: loginpassword.text);
                      } else {
                        return (MaterialApp(
                          home: Scaffold(
                            appBar: AppBar(
                              title: const Text('LOGIN WARNING PAGE'),
                              centerTitle: true,
                              leading: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                ),
                              ),
                            ),
                            body: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      'USER NOT AVAILABLE PLEASE SIGN IN'),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignIn()));
                                      },
                                      child: const Text('SIGNIN'))
                                ],
                              ),
                            ),
                          ),
                        ));
                      }
                    } //const TestPage1()

                            ));
                  },
                  child: const Text('LOGIN ')),

              const SizedBox(
                height: 30.0,
              ),

              const Text('NOT AN USER FIRST  SIGN IN'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  child: const Text('SIGNIN')),

              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var mail, password;

  //const LoginPage({Key? key}) : super(key: key);
  LoginPage({required this.mail, required this.password});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('login'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              child: const Text('LOGIN1')),
        ],
      )),
    ));
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final username = TextEditingController();
  final phonenumber = TextEditingController();
  var mailid = TextEditingController();
  var signinpassword = TextEditingController();
  final securityans = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('SIGN IN PAGE'),
            centerTitle: true,
            backgroundColor: Colors.indigo,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInGuide()),
                    );
                  },
                  icon: const Icon(Icons.auto_stories_rounded))
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('PLEASE SIGN IN HERE'),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                  child: TextField(
                    controller: username,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter User Name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                  child: TextField(
                    controller: phonenumber,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Mobile Number'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                  child: TextField(
                    controller: mailid,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Mail Id'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                  child: TextField(
                    controller: signinpassword,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 50.0, left: 100.0, right: 100.0),
                  child: TextField(
                    controller: securityans,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Security Question - Your Birth Place'),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                    mail: mailid.text,
                                    password: signinpassword.text,
                                  )));
                    },
                    child: const Text('LOGIN')),
              ],
            ),
          )),
    );
  }
}

class TestPage1 extends StatefulWidget {
  const TestPage1({Key? key}) : super(key: key);

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hai'),
      ),
    );
  }
}
//
//class TestPage extends StatefulWidget {
//  var name = '';
//
//  //TestPage({Key? key}) : super(key: key);
//  TestPage({required this.name});
//
//  @override
//  State<TestPage> createState() => _TestPageState(name: '$name');
//}
//
//class _TestPageState extends State<TestPage> {
//  var name = '';
//
//  _TestPageState({required this.name});
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('$name'),
//      ),
//    );
//  }
//}

class SignInGuide extends StatefulWidget {
  const SignInGuide({Key? key}) : super(key: key);

  @override
  State<SignInGuide> createState() => _SignInGuidState();
}

class _SignInGuidState extends State<SignInGuide> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SignInGuide'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('''

                Hai user this is a saloon course 
                app for sign up you need to give 
                following details.

                name 

                phone number

                email id 

                password

                sequrity question

             '''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
