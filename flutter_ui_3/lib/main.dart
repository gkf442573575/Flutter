import 'package:flutter/material.dart';
import './home.dart';
import './find.dart';
import './cart.dart';
import './zone.dart';
import './user.dart';

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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;
  int _selectIndex = 0;
  List pglist = [HomePage(), FindPage(), CartPage(), ZonePage(), UcenterPage()];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _onTabTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: pglist[_selectIndex],
      drawer: new Drawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  _onTabTap(0);
                },
                color: _selectIndex == 0 ? Colors.red : Colors.grey),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _onTabTap(1);
                },
                color: _selectIndex == 1 ? Colors.red : Colors.grey),
            SizedBox(
              width: 50,
            ),
            IconButton(
                icon: Icon(Icons.photo_filter),
                onPressed: () {
                  _onTabTap(3);
                },
                color: _selectIndex == 3 ? Colors.red : Colors.grey),
            IconButton(
                icon: Icon(Icons.face),
                onPressed: () {
                  _onTabTap(4);
                },
                color: _selectIndex == 4 ? Colors.red : Colors.grey)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _selectIndex == 2 ? Colors.red : Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.add)]),
        onPressed: () {
          setState(() {
            _selectIndex = 2;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
