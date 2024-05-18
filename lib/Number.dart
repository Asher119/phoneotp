import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/Otp.dart';

class ash extends StatefulWidget {
  ash({super.key});

  @override
  State<ash> createState() => _ashState();
}
 
class _ashState extends State<ash> {
  TextEditingController mobile = TextEditingController();
  
  get selectedCountryCode => 91;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          color: Colors.red.shade700,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ])),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Ready to connect? just enter'),
                ],
              ),
              Row(
                children: [
                  Text('your number for all'),
                ],
              ),
              Row(
                children: [
                  Text('future conversations'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.grey.shade500)),
                      child: Row(
                        children: [
                          Image.asset('assets/flag.png'),
                          Text('+91'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 45,
                      width: 230,
                      child: TextFormField(
                        controller: mobile,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (mobile.text.length == 10) {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: '${mobile.text}',
                          verificationCompleted:
                              (PhoneAuthCredential credential) {},
                          verificationFailed: (FirebaseAuthException e) {},
                          codeSent:
                              (String verificationId, int? resendToken) {

                                Navigator.push(context,
                            MaterialPageRoute(builder: (context) => asher(
                              mobileNumber: '$selectedCountryCode${mobile.text}', 
                              verificationId: verificationId,
                            )));

                              },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );

                        
                      }
                    },
                    child: Text(
                      'Get OTP',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade300),
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
