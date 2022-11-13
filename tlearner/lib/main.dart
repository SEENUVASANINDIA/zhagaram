import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TLEARNER',
      theme: ThemeData(
        primarySwatch: Colors.purple, //defeult app theme
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
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('TLEARNER'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeGuide()));
              },
              icon: const Icon(Icons.auto_stories_sharp)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              icon: const Icon(Icons.account_balance_rounded)),
        ],
      ),
      backgroundColor: Colors.lime,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(padding: EdgeInsets.all(50.5)),
        const Text('HAI USER WELCOME TO THIS WONDERFULL APP'),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Beginer()));
            },
            child: const Text('Beginer')),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Advance()));
            },
            child: const Text('Advance'))
      ])),
    )));
  }
}

class HomeGuide extends StatefulWidget {
  const HomeGuide({Key? key}) : super(key: key);

  @override
  State<HomeGuide> createState() => _HomeGuideState();
}

class _HomeGuideState extends State<HomeGuide> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GUIDE'),
          centerTitle: true, //give title in centre
          backgroundColor: Colors.pinkAccent, //backgroundColor: Colors.pink,

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('''


            HAI USER WELCOME TO THIS APP 
            
            THIS APP IS USED FOR LEARN TAMIL LANGUAGE 

             
            THE BIGINER CONTENT FOR FRESHER TO TAMIL

            THE ADVANCE CONTENT FOR ,EXPERIENCE IN TAMIL

              THANK YOU FOR USE MY APP
               '''),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        )),
      ),
    ));
  }
}

class BeginerGuide extends StatefulWidget {
  const BeginerGuide({Key? key}) : super(key: key);

  @override
  State<BeginerGuide> createState() => _BeginerGuideState();
}

class _BeginerGuideState extends State<BeginerGuide> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GUIDE'),
          centerTitle: true, //give title in centre
          backgroundColor: Colors.pinkAccent, //backgroundColor: Colors.pink,

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('''


            HAI USER WELCOME TO THIS APP 
            
            THIS APP IS USED FOR LEARN TAMIL LANGUAGE 

             
            THE BIGINER CONTENT FOR FRESHER TO TAMIL

            THE ADVANCE CONTENT FOR ,EXPERIENCE IN TAMIL

              THANK YOU FOR USE MY APP
               '''),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        )),
      ),
    ));
  }
}

class AdvanceGuide extends StatefulWidget {
  const AdvanceGuide({Key? key}) : super(key: key);

  @override
  State<AdvanceGuide> createState() => _AdvanceGuideState();
}

class _AdvanceGuideState extends State<AdvanceGuide> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GUIDE'),
          centerTitle: true, //give title in centre
          backgroundColor: Colors.pinkAccent, //backgroundColor: Colors.pink,

          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('''


            HAI USER WELCOME TO THIS APP 
            
            THIS APP IS USED FOR LEARN TAMIL LANGUAGE 

             
            THE BIGINER CONTENT FOR FRESHER TO TAMIL

            THE ADVANCE CONTENT FOR ,EXPERIENCE IN TAMIL

              THANK YOU FOR USE MY APP
               '''),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        )),
      ),
    ));
  }
}

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DONATION'),
          centerTitle: true, //give title in centre
          backgroundColor: Colors.pinkAccent, //backgroundColor: Colors.pink,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('''


            hai user welcome to this app 
            This is a completly 
            FOSS(free and open source software )
            so if you like this app 
            and intrested to give any 
            Fund for development 
            
            For more information contact developer

            mobile No:6380243399
            
            Any way thank you for use my app
               '''),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        )),
      ),
    ));
  }
}

class Beginer extends StatefulWidget {
  const Beginer({Key? key}) : super(key: key);

  @override
  State<Beginer> createState() => _BeginerState();
}

class _BeginerState extends State<Beginer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BEGINER CONTENT'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeginerGuide()));
                },
                icon: const Icon(Icons.auto_stories_sharp)),
          ],
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Letters()));
              },
              child: const Text('LETTERS'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Words()));
              },
              child: const Text('WORDS'),
            ),
            const Text('temprorly not available'),
          ],
        )),
      ),
    );
  }
}

class Advance extends StatefulWidget {
  const Advance({Key? key}) : super(key: key);

  @override
  State<Advance> createState() => _AdvanceState();
}

class _AdvanceState extends State<Advance> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Level'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdvanceGuide()));
              },
              icon: const Icon(Icons.auto_stories_sharp)),
        ],
      ),
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Temprorly not available')],
        ),
      ),
    )));
  }
}

class Letters extends StatefulWidget {
  const Letters({Key? key}) : super(key: key);

  @override
  State<Letters> createState() => _LettersState();
}

class _LettersState extends State<Letters> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('  LETTERS  '),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeginerGuide()));
                },
                icon: const Icon(Icons.auto_stories_sharp)),
          ],
        ),
        backgroundColor: Colors.lime,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Vowel()));
              },
              child: const Text('VOWELS'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Consonent()));
                },
                child: const Text('CONSONENT')),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Compound()));
                },
                child: const Text('COMPOUND ')),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Chart()));
                },
                child: const Text('CHART')),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Numbers()));
                },
                child: const Text('NUMBERS')),
          ],
        )),
      ),
    );
  }
}

class Vowel extends StatefulWidget {
  const Vowel({Key? key}) : super(key: key);

  @override
  State<Vowel> createState() => _VowelState();
}

class _VowelState extends State<Vowel> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('VOWELS'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.lime,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.5,
                ),
                const Text(
                  'THE VOWEL LETTERS ARE',
                  textScaleFactor: 2.0,
                  style: TextStyle(
                    backgroundColor: Colors.white70,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.pinkAccent,
                  ),
                  child: Image.asset('asset/VOWELS.jpg'),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                const Text('''
                      HERE IN TAMIL VOWELS ARE THE BASIC LETTER 
                      ONE NEED TO LEARN , BECAUSE WITH THE HELP 
                      OF THIS ALL OTHER LETTERS WILL BORN
                      
                      '''),
                const SizedBox(
                  height: 25.5,
                ),
              ],
            ),
          ),
        )));
  }
}

class Consonent extends StatefulWidget {
  const Consonent({Key? key}) : super(key: key);

  @override
  State<Consonent> createState() => _ConsonentState();
}

class _ConsonentState extends State<Consonent> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('CONSONENTS'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.lime,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.5,
                ),
                const Text('THE CONSONENT LETTERS ARE',
                    textScaleFactor: 2.0,
                    style: TextStyle(
                      backgroundColor: Colors.white70,
                      color: Colors.redAccent,
                    )),
                const SizedBox(
                  height: 25.5,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.pinkAccent,
                  ),
                  child: Image.asset('asset/CONSONENTS.jpg'),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                const Text('''
                      HERE IN TAMIL CONSONENTS ARE THE SECOANDARY
                       LETTER ONE NEED TO LEARN , BECAUSE WITH 
                       THE HELP OF THIS AND VOWELS ALL OTHER LETTERS WILL BORN
                      
                      '''),
                const SizedBox(
                  height: 25.5,
                ),
              ],
            ),
          ),
        )));
  }
}

class Compound extends StatefulWidget {
  const Compound({Key? key}) : super(key: key);

  @override
  State<Compound> createState() => _CompoundState();
}

class _CompoundState extends State<Compound> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('COMPOUND'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.lime,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.5,
                ),
                const Text('THE COMPOUND LETTERS ARE',
                    textScaleFactor: 2.0,
                    style: TextStyle(
                      backgroundColor: Colors.white70,
                      color: Colors.redAccent,
                    )),
                const SizedBox(
                  height: 25.5,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.pinkAccent,
                  ),
                  child: Image.asset(
                      '/home/seenuvasan/AndroidStudioProjects/tlearner/asset/COMPOUND.jpg'),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                const Text('''
                      HERE IN TAMIL COMPOUND'S ARE THE TERTIARY LETTER 
                      ONE NEED TO LEARN , BECAUSE IT FORMED BY THE 
                      COMBINATION OF VOWELS AND CONCONENTS

                      HERE IN THIS PICTURE YOU SEE HOW THE LETTERS 
                      ARE MERGED 
                      
                      '''),
                const SizedBox(
                  height: 25.5,
                ),
              ],
            ),
          ),
        )));
  }
}

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('TAMIL LETTERS CHART'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.lime,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.5,
                ),
                const Text('THE TAMIL LETTERS ARE',
                    textScaleFactor: 2.0,
                    style: TextStyle(
                      backgroundColor: Colors.white70,
                      color: Colors.redAccent,
                    )),
                const SizedBox(
                  height: 25.5,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.pinkAccent,
                  ),
                  child: Image.asset('asset/CHART.jpg'),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                const Text('''
                      THIS IS  THE COMPLETE TAMIL LETTERS 
                      
                      FOR LEARNING TAMIL YOU NEED TO LEARN OR 
                      MEMORISE THE LETTERS FIRST AND ITS PRONOUNSATION

                      THEN ONLY YOU CAN ABLE TO LERAN THE TAMIL
                      
                      '''),
                const SizedBox(
                  height: 25.5,
                ),
              ],
            ),
          ),
        )));
  }
}

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('NUMBERES'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.lime,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.5,
                ),
                const Text('THE TAMIL NUMBERS  ARE',
                    textScaleFactor: 2.0,
                    style: TextStyle(
                      backgroundColor: Colors.white70,
                      color: Colors.redAccent,
                    )),
                const SizedBox(
                  height: 25.5,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5),
                    color: Colors.pinkAccent,
                  ),
                  child: Image.asset('asset/NUMBERS.jpg'),
                ),
                const SizedBox(
                  height: 25.5,
                ),
                const Text('''
                     
                     IN TAMIL LANGUAGE ALSO HAVE NUMBERS LIKE 
                     ENGLISH 

                     HERE WE SEE ABOUT IT 


                      
                      '''),
                const SizedBox(
                  height: 25.5,
                ),
              ],
            ),
          ),
        )));
  }
}

class Words extends StatefulWidget {
  const Words({Key? key}) : super(key: key);

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
    );
  }
}
