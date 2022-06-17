import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Welcome to Flutter'),
        // ),
        body: Container(
          color: Color.fromARGB(255, 142, 199, 231),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(180, 50),
                        primary: Color(0xFF3C50F2),
                        onPrimary: Colors.white,
                        //padding: EdgeInsets.all(0),
                      ),
                      child: Text('Login',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w900)),
                      onPressed: () {},
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(180, 50),
                          primary: Color(0xFF3C50F2),
                          side: BorderSide(
                            width: 3,
                            color: Color(0xFF3C50F2),
                            //padding: EdgeInsets.all(0),
                          )),
                      child: Text('Sign Up',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w900)),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFFBFBFF),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Login to your account and access all our products and features',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF16223E))),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      //decoration for Input Field
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode:
                        'NP', //default contry code, NP for Nepal
                    onChanged: (phone) {
                      //when phone number country code is changed
                      print(phone.completeNumber); //get complete number
                      print(phone.countryCode); // get country code only
                      print(phone.number); // only phone number
                    },
                  )),
              //   const Center(
              //     child: Text('Hello World'),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
