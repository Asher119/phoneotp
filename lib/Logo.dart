import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_app/Onboardscreen.dart';
import 'package:food_app/login.dart';




class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Onboardscreen()));
      },
    );
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            // Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_5UQeFAyaItyK7gt1B3NKhzxfDzbT5RGCGCmZl1fAOA&s")),
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}