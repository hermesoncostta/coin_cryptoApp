// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() => runApp(
       MaterialApp(
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Color.fromARGB(255, 230, 131, 248),
        ),
      ),
    );

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    void _openLoginPage() {
    Navigator.push(context, MaterialPageRoute<dynamic>(builder: (context){
    return LoginPage();
  }));
  }
    return Scaffold(
      appBar: AppBar(
     actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.menu,
        color: Color.fromARGB(255, 17, 0, 84),
      ),
      onPressed: () {
      _openLoginPage();
      },
    )
  ],
    ),
    body: Center(
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFDC5EF3),
              onPrimary: Colors.white,
            ),
            onPressed: () {_openLoginPage();},
            child: Text('voltar'),
          ),
    ),
    );
  }
}