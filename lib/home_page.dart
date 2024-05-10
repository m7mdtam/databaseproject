// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:databaseproject/login_page.dart';
import 'package:databaseproject/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 204, 206, 211),
        title: Text(
          'CYPRUS AIRLINES',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            fontFamily: 'Briem Hand',
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(7.2, 33.0)),
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Briem Hand',
                ),
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(7.2, 33.0))),
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Briem Hand',
                ),
              ))
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/hbk.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
        ),
      ]),
    );
  }
}
