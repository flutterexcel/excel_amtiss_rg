import 'package:flutter/material.dart';

class Drawerer extends StatelessWidget {
 
  

  @override
  Widget build(BuildContext context) {
    return 
    Drawer(
    
       child: Container(
          color: const Color(0xFF00E5FF),
          child: ListView(
    
            children: [
    
             Padding(
               padding: EdgeInsets.only(left:35.0,top: 70),
               child: UserAccountsDrawerHeader(
                  decoration:const BoxDecoration(
          color:Color(0xFF00E5FF),
      ),
                 
                 accountEmail: Text("joe@tennison.com",style: TextStyle(fontSize: 20),), 
                 accountName:  Text(""),
                 currentAccountPicture: Wrap(
                    // gap between lines
      direction: Axis.vertical,
                   children: const [
                     CircleAvatar(
                       backgroundColor: Colors.white,
                       maxRadius: 30.0,),
                       Padding(
                         padding: EdgeInsets.only(left:15.0,top: 15),
                         child: Text("V4",style: TextStyle(fontSize: 25,color: Colors.white),),
                       ),
                       
                   ],
                 ),),
             ),
    
             const SizedBox(height: 50,),
           
    
                const ListTile(
                  leading: Icon(Icons.bus_alert,color: Colors.white,),
                  title: Text("Assets",style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
                const Divider(
              height: 20,
              thickness: 3,
              indent: 20,
              endIndent: 0,
              color: Colors.white,
            ),
                 const ListTile(
                  leading: Icon(Icons.work,color: Colors.white,),
                  title: Text("Jobs",style: TextStyle(color: Colors.white,fontSize: 15),),
                )
    
    
            ],
          ),
        ),
    
    
        );
  }
}