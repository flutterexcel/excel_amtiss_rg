import 'package:flutter/material.dart';

class BNB extends StatelessWidget {

  var a;
  BNB({this.a=0});


  @override
  Widget build(BuildContext context) {
    return Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 3,
                   offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
    
                  
     currentIndex:a,
              
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.work),label: 'Job',backgroundColor: Colors.blue
                    
                      ),
                    
                    
                    BottomNavigationBarItem(
                     icon: Icon(Icons.comment_outlined),label: 'Update',backgroundColor: Colors.blue
                      ),
                      
                    
                    BottomNavigationBarItem(
                    
                     icon: Icon(Icons.flag),label: 'Report',backgroundColor: Colors.blue
                    ),
                    BottomNavigationBarItem(
                     
                     icon: Icon(Icons.bus_alert),label: 'Assets',backgroundColor: Colors.green
                    ),
                  ],
                ),
              ),
            );
  }
}