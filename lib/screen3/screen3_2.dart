import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  
List<double> top = [10,45,80,115,150,185,220,255];

final List<String> names = <String>['Detail','Code','Location','Category','Barcode','Manufacture','Year','Model',''];
final List<String> names2 = <String>['DC-004','ABM-004','Dozer','242.232.225.000020','Volvo','2017','DZR-110',''];


  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left:25.0,right: 25.0),
                child: Container(


width: MediaQuery.of(context).size.width,
                  height: 320,
                  decoration: BoxDecoration( border: Border.all(color: Colors.black),
                                shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),

                              child: Align(

                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:12.0),
                                  child: Stack(
                                    children: [
                                       for(int i=0;i<8;i++)
                                    Positioned(
                                     
                                      top:top[i],
                                      left: 40,
                                      
                                      child: Text(names[i],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                      ),
                                      
                                      ),

                                     for(int i=0;i<7;i++)
                                      Positioned(
                                      
                                      top:top[i+1],
                                      left: 200,
                                      
                                      child: Text(names2[i],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                      ),
                                      
                                      ),
                                     
                                    ],
                                  )
                                ),
                              ),

                
             ),
              );
  }
}