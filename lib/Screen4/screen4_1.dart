import 'package:firebase_authentication_tutorial/Screen4/screen4_2.dart';
import 'package:firebase_authentication_tutorial/Widgets/bottom_navigation_bar.dart';
import 'package:firebase_authentication_tutorial/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Screen7 extends StatefulWidget {
  
  
  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
   bool isSwitched = false;
   var val=1;
    final List<String> names = <String>['Upload','History','Work-Req','Backlog'];

 static const _iconTypes = <IconData>[
    Icons.upload,
    Icons.history,
    Icons.home_work,
    Icons.backup_table_outlined,
    
  ];

  BoxDecoration _boxDecoration()
  {
   return BoxDecoration( border: Border.all(color: Colors.grey),
                                shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10)),
                              );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(""),),
        body: SingleChildScrollView(
          child: Column(
               
            
          children: <Widget>[
        
              const SizedBox(height: 40),
    
              Container(
    
                child: Row(children: const [
                  
     Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left:15.0,top: 25.0),
                  child:  InkWell(
                    child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 36.0,
                      ),
                  ),
                ),
              ),
                
       Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left:15.0,top: 25.0),
                  child:  Text(
                          "Upcoming Job",
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                ),
              ),
    
                ],),
              ),
        
                  
                   const SizedBox(height: 25),
        const Divider(),
    
             Padding(
                   padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 15.0),
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:  <Widget>[
                       
                       for(int i=0;i<4;i++)

                     Column(children: [
                         
                     Container(
                     height: 70,
                     width: 80,
                     decoration: _boxDecoration(),


                     child: Icon(_iconTypes[i],
                     color: Color(0xFF00E5FF),
                      size: 42.0,                    

  ),
                   ), 

                    Text(names[i],style:TextStyle(color:Colors.black,fontSize:16),),


                       ],),
                 

  
   ]
                   ),
                 ),
          
                  
    
                      const SizedBox(height: 25),
    
             
    
               Screen6(),
    
              const SizedBox(height:10),
    
    
    
            ],
          ),
        ),


        //Drawer
        drawer:Drawerer(),
    
    
       //floatingactionbutton
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen3()));
          showMaterialModalBottomSheet(
                                                  shape: const RoundedRectangleBorder(
     borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
  ),
  context: context,
  builder: (context) => StatefulBuilder(
     builder: (BuildContext context, StateSetter setState /*You can rename this!*/) {
    return Container(
    
                  height: 700,
                  child: Column(
                   
                    children: <Widget>[
  
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                     
                          
                          children: const [
                            
                          Icon(Icons.close),
                          
                          //Spacer(),
                        
                          Expanded(child: Center(child: Text('Choose Status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                        ],),
                      ),
  
                      const SizedBox(height: 40,),
  
  
                      ListTile(
                        title: Text("All Status"),
                         trailing: Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (value) {
                     // print(value);
                      setState(() {
                        val = value;
                      });
                    },
                  ),
                ),
                
                Divider(),
                
  
                ListTile(
                        title: Text("Active"),
                         trailing: Radio(
                              activeColor: Color(0xFF00E5FF),
                    value: 2,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                 
                  ),
                ),
                Divider(),
  
                ListTile(
                        title: Text("Breakdown"),
                         trailing: Radio(
                            activeColor:Color(0xFF00E5FF),
                    value: 3,
                    groupValue: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                   
                  ),
                ),
                Divider(),
  
  const SizedBox(height: 300,),
  
                InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0,right: 15.0),
                          child: Container(
                          
                                   
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration:const BoxDecoration(  color: Color(0xFF00E5FF),
                                        shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                            
                                       
                                 
                                        child:Align(alignment: Alignment.center,
                          child: Container(child: const Text("Apply",style:TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.bold),))),
                                            
                          ),
                        ),
                
                        onTap: ()
                      {
  
                          
  
                        },
                      ),
  
                      
                    ],
                  ),
                );
  
  }
  ),
);
            },
          child: Icon(Icons.add),
        ),



         //bottomnavigationbar
         bottomNavigationBar: BNB(),
             
       
      );
    


  }
  
}

