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
        primaryColor: Color(0xff44D9C0),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  String gender;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 7,
                        ),
                        Text('$name 님 안녕하세요',
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 24)),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.deepPurple),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 300,
                  child: Text('1번'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  width: 300,
                  child: Text('1번'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  child: Text('1번'),
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple[200],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _drawerKey.currentState.openDrawer();
            },
          ),
          title: Text('첫번째 앱'),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
            child: ListView(
              children: <Widget>[
                Image.network(
                  'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png',
                  height: 60,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(20),
                  leading: Icon(Icons.add_circle),
                  title: Text('Add'),
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: '이름을 입력해주세요.',
                      hintStyle: TextStyle(fontSize: 15)),
                  maxLength: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: '성별을 입력해주세요.',
                      hintStyle: TextStyle(fontSize: 15)),
                  maxLength: 10,
                ),
                RaisedButton(
                  child: Text('제출하기',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print('name is ' + name);
                    print('gender is ' + gender);
                  },
                  color: Colors.orangeAccent,
                )
              ],
            )));
  }
}
