import 'dart:async';

import 'package:firebase_authentication_tutorial/Widgets/bottom_navigation_bar.dart';
import 'package:firebase_authentication_tutorial/home_page2.dart';
import 'package:firebase_authentication_tutorial/screen3/screen3_1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  
  List<String> navbarItem=["All Status","All Location","All Category"];
   List<String> dropdownValue = ["All Status","All Location","All Category"];

  @override
  Widget build(BuildContext context) {

    
    Timer(
           const Duration(seconds: 3),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Screen3())));

                
    return Scaffold(
      body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
       
              
            children: <Widget>[

                const SizedBox(height: 25),

                const Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left:20.0),
                    child:  Text(
                            "Assets",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                  ),
                ),

                     const SizedBox(height: 20),
const Divider(),
const SizedBox(height: 20),
           
                  Container(
                    alignment: Alignment.topCenter,
                    child:TextField(
                              
                              autocorrect: true,
                    
                              decoration:  InputDecoration(
                                filled: true,
                                
                                
                                prefixIcon: const Icon(Icons.search),
                                
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30.0),
      ),
     
                                  hintText: "Find Assets"),

                                  

                                  
                            )
                  ),
               

              const  SizedBox(height: 20),

               
                  Container(

                    height: 50,
                    color: const Color(0xFFF5F5F5),
                    alignment: Alignment.topCenter,

                    child: ListView.separated(
                      
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      
                      
                       separatorBuilder: (BuildContext context, int index) {
		return const SizedBox(
				height:35,
                );
		},itemCount: dropdownValue.length,

                      itemBuilder: (context, index)
                      {
                        return Container(

                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: const BoxDecoration(color: Color(0xFFF5F5F5),
                        ),
                          

child:DropdownButton<String>(
      value: dropdownValue[index],
   
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 1,
     
      ),
      onChanged: (String newValue) {
        // setState(() {
        //   dropdownValue = newValue!;
        // });
      },
      items: <String>['All Status', 'All Location', 'All Category', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
        );
      }).toList(),
    ),

                        );

                      },
                      )
                  
                  ),
             const  SizedBox(height: 5),

              
              HomePage2()

              ],
            ),
          ),

             bottomNavigationBar:BNB(a: 3),
     
    );
  }
}
