import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      /*routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },*/
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                    alignment: Alignment.center,
                    child: Text('Create an',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 110.0, 0.0, 0.0),
                    alignment: Alignment.center,
                    child: Text('Account',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 25.0, right: 55.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.black12,
                          elevation: 0.0,
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: 'EMAIL/MOBILE',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 45.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.black12,
                          elevation: 0.0,
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.keyboard_hide),
                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            //obscureText: true,
                          )),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 45.0,
                      child: Material(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.black12,
                          elevation: 0.0,
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.keyboard_hide),
                              labelText: 'REPEAT PASSWORD',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            //obscureText: true,
                          )),
                    ),
                    SizedBox(height: 45.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.black12,
                        color: Colors.purple,
                        elevation: 2.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),

//                    Container(
//                      height: 40.0,
//                      color: Colors.transparent,
//                      child: Container(
//                        decoration: BoxDecoration(
//                            border: Border.all(
//                                color: Colors.black,
//                                style: BorderStyle.solid,
//                                width: 1.0),
//                            color: Colors.transparent,
//                            borderRadius: BorderRadius.circular(20.0)),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            /*Center(
//                              child:
//                              ImageIcon(AssetImage('assets/f.png')),
//                            ),*/
//                            SizedBox(width: 10.0),
//                            Center(
//                              child: Text('Log in with facebook',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontFamily: 'Montserrat')),
//                            )
//                          ],
//                        ),
//                      ),
//                    )
                  ],
                )),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Signup with',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            //SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Expanded(child: getImageAsset1()),
                Expanded(child: getImageAsset2()),
                Expanded(child: getImageAsset3()),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Made in India',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ]),
    );
  }

  Widget getImageAsset1() {
    AssetImage assetImage = AssetImage('images/FBIcon.png');
    Image image = Image(
      image: assetImage,
      width: 70.0,
      height: 70.0,

      color: Colors.black54,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(50),
    );
  }

  Widget getImageAsset2() {
    AssetImage assetImage = AssetImage('images/GoogleIcon.png');
    Image image = Image(
      image: assetImage,
      width: 70.0,
      height: 70.0,
      color: Colors.black54,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(50),
    );
  }

  Widget getImageAsset3() {
    AssetImage assetImage = AssetImage('images/InstaIcon.png');
    Image image = Image(
      image: assetImage,
      width: 70.0,
      height: 70.0,
      color: Colors.black54,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(50),
    );
  }
}
/* alignment: Alignment.center,
              child: Text(
                'Signup with',
                style: TextStyle(fontFamily: 'Montserrat'),*/
