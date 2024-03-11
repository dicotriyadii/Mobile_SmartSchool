import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:awesome_dialog/awesome_dialog.dart';
//page
import 'package:smartschool/landingPage_view.dart';
import 'package:smartschool/dashboard_view.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState({Key? key});
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  // TextEditingController kodeSekolah = new TextEditingController();
  bool passwordVisible = false;
  bool? loading = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

//Login Warga
  Future<String> Login(String username, String password) async {
    setState(() {
      loading = true;
    });
    final response = await http.post(
      Uri.parse(
          'https://pantaupsu.deliserdangkab.go.id/APISmartSchool/api/Login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      setState(() {
        loading = false;
      });
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        borderSide: const BorderSide(
          color: Colors.green,
          width: 2,
        ),
        width: 280,
        buttonsBorderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
        headerAnimationLoop: false,
        animType: AnimType.bottomSlide,
        title: 'Login Berhasil',
        desc: 'Selamat Datang di Aplikasi Smart School Indonesia',
        showCloseIcon: true,
        btnCancelOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        btnOkOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dashboard()),
          );
        },
      ).show();
      return "Success!";
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        borderSide: const BorderSide(
          color: Colors.green,
          width: 2,
        ),
        width: 280,
        buttonsBorderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
        headerAnimationLoop: false,
        animType: AnimType.bottomSlide,
        title: 'Login Gagal',
        desc: 'Username Atau Password salah, Silahkan coba lagi',
        showCloseIcon: true,
        btnCancelOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        btnOkOnPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ).show();
      return "Gagal";
    }
  }

  @override
  Widget build(BuildContext context) {
    //pemanggilan material
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: IconButton(
                        icon: new Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 50,
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => LandingPage());
                          Navigator.push(context, route);
                        },
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 150, left: 20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Selamat Datang di',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                        fontFamily: 'calibri',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                              child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Silahkan Masukkan Username',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontFamily: 'calibri'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'dan Password anda',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontFamily: 'calibri'),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 70),
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: <Widget>[
                                // Container(
                                //   width: 400,
                                //   height: 50,
                                //   child: TextFormField(
                                //     controller: kodeSekolah,
                                //     keyboardType: TextInputType.text,
                                //     autofocus: false,
                                //     decoration: InputDecoration(
                                //       filled: true,
                                //       fillColor: Colors.white,
                                //       hintText: 'Masukkan Kode Sekolah Anda ',
                                //       contentPadding:
                                //           EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                //       border: OutlineInputBorder(
                                //           borderRadius: BorderRadius.circular(10.0)),
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(height: 20),
                                Container(
                                  width: 400,
                                  height: 50,
                                  child: TextFormField(
                                    controller: username,
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Masukkan Username anda',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 400,
                                  height: 50,
                                  child: TextFormField(
                                    obscureText: !passwordVisible,
                                    controller: password,
                                    keyboardType: TextInputType.visiblePassword,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      suffixIcon: IconButton(
                                        splashRadius: 1,
                                        icon: Icon(passwordVisible
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined),
                                        onPressed: togglePassword,
                                      ),
                                      hintText: 'Masukkan Password',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              children: <Widget>[
                                loading == true
                                    ? Container(
                                        child: Container(
                                            child: LinearProgressIndicator(
                                          backgroundColor:
                                              Color.fromRGBO(0, 74, 173, 1),
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.greenAccent),
                                        )),
                                      )
                                    : Container(
                                        width: 300,
                                        height: 50,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(0, 74, 173,
                                                1), // Background color
                                          ),
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                          onPressed: () {
                                            Login(username.text, password.text);
                                          },
                                        )),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                              child: Column(
                            children: <Widget>[
                              Text(
                                'Lupa Password ?',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'calibri'),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Belum Memiiki Akun ? Registrasi Disini',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'calibri'),
                    ),
                  ))
            ],
          )),
    );
  }
}
