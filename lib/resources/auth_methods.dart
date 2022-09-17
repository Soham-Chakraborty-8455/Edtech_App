import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  // signup user
  Future<String> SignUpUser({
  required String SchoolName,
    required String AdmissionNumber,
    required String email,
    required String password,
})async{
    String res="Some error occurred";
    try{
      if(SchoolName.isNotEmpty || AdmissionNumber.isNotEmpty || email.isNotEmpty || password.isNotEmpty){
       //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        //add user to database
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'SchoolName': SchoolName,
          'AdmissionNumber': AdmissionNumber,
          'UserID': cred.user!.uid,
          'email': email,
          'progress': [],
        });
        res="Success";
      }
    }catch(err){
      res= err.toString();
    }
    return res;
  }

}