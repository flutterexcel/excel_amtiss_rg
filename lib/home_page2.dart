import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
 
final List<String> names = <String>['DT-001','DT-024'];
final List<String> desc = <String>['Dump Truck Komatsu','Dump Truck Volvo'];
 final List<String> button = <String>['Active','Breakdown'];
 List<Color> colors = [Colors.green, Colors.red];


 final List<String> names2 = <String>['EX-476','VX-214','EC-210','EC-214'];
 final List<String> desc2 = <String>['Exca Volvo','Excavator Zoomlion','Excavator Komatsu','Excavator Komatsu'];
 final List<String> button2 = <String>['Active','Breakdown','Active','Active'];
 List<Color> colors2 = [Colors.green, Colors.red,Colors.green,Colors.green];

  @override
  Widget build(BuildContext context) {
    return    Expanded(
                  child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: Text(
                            "Dump Truck",
                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                    ),
                  ),

                   const SizedBox(height: 5),
                   for(int i=0;i<2;i++)
                Card(
                  
                      child:  ListTile (
                                
                           title: Text(
                         names[i],
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:Text(
                         desc[i],
                          style:const TextStyle(fontSize: 15,),
                        ),
                    
                        trailing: RaisedButton(
                                          child:Text(
                                            button[i],
                                           
                                          ),
                                           shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                    
                                          color: colors[i],
                                          textColor: Colors.white,
                      
                                          onPressed: () {
                    
                                        //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen()));
                                          
                                          },
                                        ),
                                    
                              )
                    ),
                  
                  
                                
                  const SizedBox(height: 5),
              
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                            "Excavator",
                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                    ),
                  ),
                  const SizedBox(height: 5),
                     
               for(int i=0;i<4;i++)
                  Card(
                  child:  ListTile (
                            
                       title:   Text(
                      names2[i],
                      style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle:  Text(
                     desc2[i],
                      style: const TextStyle(fontSize: 15,),
                    ),
                  
                    trailing: RaisedButton(
                      
                                      child:Text(
                                       button2[i],
                                       
                                      ),
                                       shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                                                   
                                      color: colors2[i],
                                      textColor: Colors.white,
                                      
                  
                                      onPressed: () {
                  
                                     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen()));
                                      
                                      },
                                    ),
                                
                          )
                  ),
                
        
                
                   
                  ],
                ),
                );
  }
}