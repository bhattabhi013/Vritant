import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vritant/tabs/screens/tabs_screen.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    double a = MediaQuery.of(context).size.height as double;
    double b = MediaQuery.of(context).size.width as double;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(33, 150, 243, 1),
            Color.fromRGBO(255, 255, 255, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 150, 243, 1),
          title: const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Mail',
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ]),
              Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 45, right: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter OTP',
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 8, top: 4),
                          child: Text('resend')),
                    ],
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TabsScreen()));
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(left: 145, right: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color.fromRGBO(33, 150, 243, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Verify',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -5,
            child: Image(
              image: AssetImage('assets/images/Grass.png'),
              width: b,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 50,
            child: Image(
              image: AssetImage('assets/images/bee.png'),
              height: 200,
            ),
          ),
          Positioned(
            top: a / 4 - 30,
            right: 50,
            child: Image(
              image: AssetImage('assets/images/monkey.png'),
              width: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
