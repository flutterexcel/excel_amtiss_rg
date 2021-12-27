import 'dart:async';

import 'package:firebase_authentication_tutorial/Screen5/screen5_1.dart';
import 'package:firebase_authentication_tutorial/screen3/screen3_2.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

     Timer(
            Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Screen7())));
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
             
          
        children: <Widget>[
      
            const SizedBox(height: 25),

            Container(

              child: Row(children: const [
                
 Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left:15.0,top: 25.0),
                child:  Icon(
      Icons.arrow_back,
      color: Colors.black,
      size: 36.0,
    ),
              ),
            ),
              
   Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left:15.0,top: 25.0),
                child:  Text(
                        "Detail Assets",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
              ),
            ),

              ],),
            ),
      
                
                 const SizedBox(height: 25),
      const Divider(),

          
        
                 Container(

                   child: const DefaultTabController(
                     length: 3,
                     child: TabBar(
                       labelColor:Color(0xFF00E5FF),
                       indicatorColor: Color(0xFF00E5FF),
                       unselectedLabelColor: Colors.black,
                       labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                           tabs: <Widget>[
                             Tab(text: "General",),
                             Tab(text: "Update"),
                             Tab(text: "Reports"),
                           ],
                         ),
                   ),

 

              
             ),

              const Divider(),

              const SizedBox(height: 25),
             

             Padding(
               padding: const EdgeInsets.only(left:25.0,right: 25.0),
               child: Container(


 width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration:   BoxDecoration( border: Border.all(color: Colors.black),
  image:  const DecorationImage(
      image: ExactAssetImage('assets/images/build.png'),
      fit: BoxFit.fill,
      ),shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10)),),

                
               ),
             ),

                 const SizedBox(height: 30),


              Padding(
                padding: const EdgeInsets.only(left:25.0,right: 25.0),
                child: Container(
                  height: 65,
                  //color: Color(0xFF),
                  decoration:   BoxDecoration( border: Border.all(color: Colors.black),
  shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10)),),
                  alignment: Alignment.topCenter,
                  child: ListTile (
                              
                         title:  const Text(
                        "Dozer D6-R",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      
                      trailing: RaisedButton(
                                        child: const Text(
                                          'Active',
                                         
                                        ),
                                         shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
                  
                                        color: Colors.green,
                                        textColor: Colors.white,
                    
                                        onPressed: () {
                  
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen7()));
                                        
                                        },
                                      ),
                                  
                            )

                            
                ),
              ),

              const SizedBox(height: 30),


              Screen4(),

             const SizedBox(height: 20),

             
          ],
        ),
      ),
           
     
    );


  }
}