
import 'package:firebase_authentication_tutorial/Widgets/calender.dart';

import 'package:flutter/material.dart';


class Screen6 extends StatefulWidget {
  
  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
 bool isSwitched = false;
  var val=1;

  final List<String> weeks = <String>['Th','Fr','Sa'];
  final List<String> date = <String>['8','9','10'];
  final List<String> names = <String>['WO00028','WO00029','WO00030'];
  final List<String> button = <String>['High','Medium','Low'];
  List<Color> colors = [Colors.red, Colors.yellow, Colors.green];
 
  @override
  Widget build(BuildContext context) {
    return Column(children: [

     isSwitched? Calender1():Text(""),

     

     

                 Padding(
                   padding: const EdgeInsets.all(25.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                   const Text("Show Calenders",style:TextStyle(color:Colors.black,fontSize:25,fontWeight: FontWeight.bold),),

  Align(
    alignment: Alignment.topRight,
    child: Transform.scale(
                               scale: 1.5,
                               
                               child: Switch(
                                         value: isSwitched,
                                         onChanged: (value) {
                                           setState(() {
                                             isSwitched = value;
                                        
                                           });
                                         },
                                         activeTrackColor:const Color(0xFF00E5FF),
                                         activeColor: const Color(0xFF00E5FF),
                                       ),
                             ),
  ),

                     ],
                   ),
                 ),
                 

                 for(int i=0;i<3;i++)


              Padding(
                
                   padding: const EdgeInsets.only(left:25.0,right: 25.0),

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: 50,
                         width: 50,
                          decoration:   BoxDecoration( border: Border.all(color: Colors.grey),
  shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10)),),

                         child: Column(children: [
                           Text(weeks[i],style: const TextStyle(color:Color(0xFF00E5FF),fontSize: 20,fontWeight: FontWeight.bold)),
                           Text(date[i],style: const TextStyle(fontSize:15 ),),
                         ],),


                       ),

                        Container(
                          height: 100,
                          width: 300,
                           decoration:   BoxDecoration( border: Border.all(color: Colors.grey),
  shape: BoxShape.rectangle, borderRadius: const  BorderRadius.all(Radius.circular(10)),),
                          child: Stack(children: [

                            Positioned(
                              top: 10,
                              left: 6,
                              
                              
                              child:  Text(names[i],style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

                             const  Positioned(

                                 top: 45,
                                 left: 6,
                              
                              
                              child:      Text("Preventive Maintainenece 250-HM",style: TextStyle(fontSize: 15),)
                              ,),
                             const Positioned(

                                 top: 66,
                                 left: 6,
                              
                              
                              child:Text("DT003",style: TextStyle(fontSize: 15),)
                              ,),

                              Positioned(

                                 left: 200,
                                 
                                 top:10,
                              
                              
                              child:  Container(
                                height: 25,
                            
                                decoration:BoxDecoration(color: colors[i],
  shape: BoxShape.rectangle, borderRadius:const BorderRadius.all(Radius.circular(10)),),


                             //   color: Colors.red,
                                child:FlatButton(
                                 
                                              child:  Text(
                                                button[i],style: const TextStyle(color: Colors.white),
                                               
                                              ),
                                              onPressed: ()
                                              {
                                                
},
                                        
                                            ),
                                            
                              ),

                         ),
                          ],
                         
                          ),
                       ), 
                     ],
                   ),
                 ),

    ],
    );
              
  }
}