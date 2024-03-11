import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:awesome_dialog/awesome_dialog.dart';
//page
import 'package:smartschool/Login_view.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _LandingPageState({Key? key});

  @override
  Widget build(BuildContext context) {
    //pemanggilan material
    return Scaffold(
        body: Container(
            child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60, left: 10),
                width: 200,
                child: Image.asset(
                  'assets/img/logoSmartSchool.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 200),
                        width: 400,
                        height: 400,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/img/gambar1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          'Selamat Datang di',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'calibri',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'SMART SCHOOL INDONESIA',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'calibri',
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Silahkan melakukan login untuk masuk ke dalam aplikasi.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: 'calibri'),
                              ),
                              Text(
                                'jika belum memiliki akun, silahkan melakukan',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: 'calibri'),
                              ),
                              Text(
                                'registrasi terlebih dahulu.',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'calibri'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 250,
                                  height: 30,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(
                                          0, 74, 173, 1), // Background color
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()),
                                      );
                                    },
                                  )),
                              SizedBox(height: 20),
                              Container(
                                  width: 250,
                                  height: 30,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: const BorderSide(
                                            width: 2.0,
                                            color: Color.fromRGBO(0, 74, 173,
                                                1)) // Background color
                                        ),
                                    child: Text(
                                      "Registrasi",
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 74, 173, 1),
                                          fontSize: 20),
                                    ),
                                    onPressed: () {},
                                  )),
                              SizedBox(height: 30),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
