// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
                height: 100,
                width: 100,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "lib/images/logo22.jpeg",
                    ))),
          ),
          SizedBox(height: 0.5),
          Text(
            'CYPRUS AIRLINES',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 18.0),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Enter your email',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Enter your password',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 0, 0)),
            ),
            onPressed: () {},
            child: Text('Login'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member ? ',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 17,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 0.0),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Text(
                  style: TextStyle(fontSize: 18),
                  'Sign up',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
