import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Home.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class asher extends StatefulWidget {
  final String mobileNumber;
  final String verificationId;
   asher({required this.mobileNumber, required this.verificationId});

  @override
  State<asher> createState() => _asherState();
}

class _asherState extends State<asher> {
  TextEditingController control = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Center(
              child: PinCodeTextField(controller: control,
              maxLength: 4,
              pinBoxBorderWidth: 5,
              pinBoxRadius: 10,
              pinBoxColor: Colors.red.shade100,
              pinBoxHeight: 60,
              pinBoxWidth: 60,
              pinBoxOuterPadding: EdgeInsets.all(5),
              defaultBorderColor: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 100,),
          SizedBox(width: 200,
            child: ElevatedButton(onPressed: () async {
              PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: widget.verificationId, 
              smsCode: control.text);

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential);

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homes()));
            }, child: Text('Confirm',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade400,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
          )
        ],
      ),
    );
  }
}