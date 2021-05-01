import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/David.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child: Row(
              children: [
                ImageIcon(
                  AssetImage('assets/images/logo.png'),
                  size: 30,
                  color: Colors.yellow,
                ),
                Spacer(),
                ImageIcon(
                  AssetImage('assets/images/menu 2.png'),
                  size: 21,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 30),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello,\n',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'i\'m ',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'David',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 589, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Graphics designer, flutter app developer',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Fuelled by a passion for designing compelling products, I have deep desire to excel and continously improve in my work.',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[300],
                      height: 1.4),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Check out my works',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.yellow),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ImageIcon(
                      AssetImage('assets/images/github.png'),
                      color: Colors.yellow,
                      size: 23,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ImageIcon(
                      AssetImage('assets/images/dribble.png'),
                      color: Colors.yellow,
                      size: 23,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ImageIcon(
                      AssetImage('assets/images/behance-logo.png'),
                      color: Colors.yellow,
                      size: 23,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
