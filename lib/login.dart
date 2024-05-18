import 'package:flutter/material.dart';
import 'package:food_app/Signup.dart';




class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign in',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Start Your Journey With Affordable Prize',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Email address',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                )),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Text(
                  'forgot password?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                        width: 130,
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'OR',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 130,
                      child: Divider(
                        color: Colors.black,
                        height: 20,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  
                ],
              ),
              SizedBox(height: 30,),
              Text('Sign in using'),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 60,  
                    child: Image.asset(
                      'assets/facebook.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Image.asset(
                  'assets/google.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 50,
                width: 60,
                child: Image.asset(
                  'assets/phone1.png',
                  fit: BoxFit.fill,
                ),
              )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}