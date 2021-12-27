// ignore_for_file: missing_return

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_page.dart';


class DB
{
  Map data;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User> get authStateChanges => auth.authStateChanges();

Future<void> userSetup(String companyName,String username,String password) async {

//  DocumentReference documentReferencer =
//         users.doc().collection('Users').doc();
  
  final docId=users.doc().id;
   users.add({'companyName': companyName, 'username':username, 'password': password,});
  Fluttertoast.showToast(
        msg: "Account Created Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
         
       
        fontSize: 16.0

        
    );
    //return HomePage();
    
     MaterialPageRoute(
         builder: (_) => HomePage());

    
  
//  return doc_id.id;
   
}

Future<int> doesNameAlreadyExist(String cname,String uname,String pass) async {

  try {
    final QuerySnapshot result = await FirebaseFirestore.instance
    .collection('Users')
    .where('companyName', isEqualTo: cname,).where('username', isEqualTo: uname,).where('password', isEqualTo: pass,)
    
    .get();

  final List<DocumentSnapshot> documents = result.docs;
  var a= documents.length;

  if(a==1)
  {
Fluttertoast.showToast(
        msg: "Account Already Exist",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
       
        fontSize: 16.0

        
    );
    return Future.delayed(Duration(seconds: 1),()
    {
      return 0;
      }
      );
    
  }
  else{
    userSetup(cname, uname, pass);
   return Future.delayed(Duration(seconds: 1),(){return 1;});
  }
  
  } catch (e) {
    e.toString();
  }

  
  
}



}
