import 'package:flutter/material.dart';

import 'main_screen.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      home: SignInScreen(),
      routes: {
        '/main_screen': (context) => MainScreen(),
      },
    );
  }
}

class SignInScreen extends StatelessWidget {
  Color purpleColor = Color(0xffB586D7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 80,
        ),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/image.png'),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Work',
                      style: TextStyle(
                        fontSize: 36,
                        letterSpacing: 1.2,
                        color: Color(0xff1C215B),
                      ),
                    ),
                    Text(
                      'Out',
                      style: TextStyle(
                        fontSize: 36,
                        letterSpacing: 1.2,
                        color: Colors.purple[200],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Join us and change your life',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 46,
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.pushNamed(context, '/main_screen');
                      },
                      color: Color(0xffB586D7),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      width: 1.2,
                      color: purpleColor,
                    ),
                  ),
                  height: 46,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: purpleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
