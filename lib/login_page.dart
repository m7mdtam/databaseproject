// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
                height: 100,
                width: 100,
                child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "lib/images/3.jpeg",
                    ))),
          ),
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
              SizedBox(width: 10.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
