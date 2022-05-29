// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
    ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          right: 40,
          left: 40,
          
        ),
        child: ListView(children: <Widget>[
          SizedBox(
            width: 250,
            height: 250,
            child: Image.asset('assets/images/loginpage.png'),
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            'Bem vindo de volta',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 230, 131, 248),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'E-mail',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Color(0xFFDC5EF3),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                fontSize: 14,
                color: Color(0xFFDC5EF3),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.bottomRight,
              primary: Colors.blue,
            ),
            onPressed: () {},
            child: Text('Esqueceu a senha?'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 230, 131, 248),
              onPrimary: Colors.white,
            ),
            onPressed: () {},
            child: Text('Acessar'),
          ),
        ]),
      ),
    );
  }
}
