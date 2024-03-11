import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:smartschool/landingPage_view.dart';
//page

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  _dashboardState({Key? key});
  TextEditingController username = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    //pemanggilan material
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 74, 173, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 74, 173, 1),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_alert,
                color: const Color.fromRGBO(255, 255, 255, 1),
                size: 35,
              ),
              onPressed: () {}),
        ],
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 500,
                  height: 950,
                  color: Colors.white,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 74, 173, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  width: 500,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              margin: EdgeInsets.only(bottom: 90),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Selamat Datang',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontFamily: 'calibri',
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'M Dico Triyadi',
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontFamily: 'calibri',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: 140,
                                height: 140,
                                margin: EdgeInsets.only(right: 40),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                        'assets/img/gambar2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    width: 380,
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  10.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(15),
                              title: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Pengumuman :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: 'calibri'),
                                ),
                              ),
                              subtitle: Text(
                                'Silahkan membawa bekal untuk acara maulid nabi besok tanggal 8 november 2023',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'calibri'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    width: 380,
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                width: 75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      title: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromRGBO(0, 74, 173, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Container(
                                            child: Image.asset(
                                              'assets/img/iconHorn.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      subtitle: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Aktifitas',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'calibri'),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                width: 75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      title: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromRGBO(0, 74, 173, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Container(
                                            child: Image.asset(
                                              'assets/img/iconRaport.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      subtitle: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Raport',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'calibri'),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                width: 75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      title: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromRGBO(0, 74, 173, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Container(
                                            child: Image.asset(
                                              'assets/img/iconMedia.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      subtitle: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Media',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'calibri'),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                width: 75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      title: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromRGBO(0, 74, 173, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Container(
                                            child: Image.asset(
                                              'assets/img/iconDompet.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      subtitle: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 14),
                                          child: Text(
                                            'Tabungan',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'calibri'),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                width: 75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      title: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromRGBO(0, 74, 173, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Container(
                                            child: Image.asset(
                                              'assets/img/iconProfile.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      subtitle: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Profile',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'calibri'),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 320),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40, bottom: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Video Hightlight',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  fontFamily: 'calibri',
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 40,
                                ),
                                width: 250,
                                height: 150,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black12,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.play_arrow,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            size: 35,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20,
                                ),
                                width: 250,
                                height: 150,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black12,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.play_arrow,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            size: 35,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20,
                                ),
                                width: 250,
                                height: 150,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black12,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.play_arrow,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                            size: 35,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 580),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40, bottom: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Artikel',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  fontFamily: 'calibri',
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: 350,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 40,
                                ),
                                width: 250,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(15),
                                      title: Container(
                                        height: 200,
                                        margin: EdgeInsets.only(bottom: 20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.black12,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      subtitle: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                '02 Maret 2024',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                    color: Colors.black,
                                                    fontFamily: 'calibri'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Ini merupakan Artikel yang isi nya banyak',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: 'calibri'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 40,
                                ),
                                width: 250,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                      contentPadding: EdgeInsets.all(15),
                                      title: Container(
                                        height: 200,
                                        margin: EdgeInsets.only(bottom: 20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.black12,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://images.unsplash.com/photo-1607355739828-0bf365440db5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1444&q=80",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      subtitle: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                '02 Maret 2024',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                    color: Colors.black,
                                                    fontFamily: 'calibri'),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Ini merupakan Artikel yang isi nya banyak',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontFamily: 'calibri'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(0, 74, 173, 1),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                height: 35,
                child: Image.asset(
                  'assets/img/iconHome.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Color.fromRGBO(0, 74, 173, 1),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    child: Image.asset(
                      'assets/img/iconHorn.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Aktivitas',
                    style:
                        TextStyle(fontFamily: 'calibri', color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    child: Image.asset(
                      'assets/img/iconRaport.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Raport',
                    style:
                        TextStyle(fontFamily: 'calibri', color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    child: Image.asset(
                      'assets/img/iconMedia.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Media',
                    style:
                        TextStyle(fontFamily: 'calibri', color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    child: Image.asset(
                      'assets/img/iconProfile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Profile',
                    style:
                        TextStyle(fontFamily: 'calibri', color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
