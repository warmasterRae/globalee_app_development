import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        // title: Text("Flutter Background Imagd - FlutterCorner"),
        // ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                    child: Image.asset(
                      'assets/images/splash 4.png',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.only(bottom: 30.0)),
              ),
              Expanded(
                flex: 1,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white60,
                                Colors.white10,
                              ]),
                          //color: Color.fromARGB(94, 220, 247, 99),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(8),
                            bottom: Radius.circular(0),
                          ),
                          border: Border.all(
                            width: 2,
                            color: Colors.white30,
                          )),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Text('Lets Get Started',
                                    style: GoogleFonts.delaGothicOne(
                                        fontWeight: FontWeight.normal,
                                        height: 1,
                                        fontSize: 24,
                                        color: Color(0xFF16223E))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFBFBFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Create your shop and start selling products from all ovvr the world',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF16223E))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(180, 50),
                                      primary: Color(0xFF16223E),
                                      onPrimary: Colors.white,
                                      //padding: EdgeInsets.all(0),
                                    ),
                                    child: Text('Login',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w900)),
                                    onPressed: () {},
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        minimumSize: Size(180, 50),
                                        primary: Color(0xFF16223E),
                                        side: BorderSide(
                                          width: 3,
                                          color: Color(0xFF16223E),
                                          //padding: EdgeInsets.all(0),
                                        )),
                                    child: Text('Sign Up',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w900)),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
