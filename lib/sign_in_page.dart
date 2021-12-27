import 'package:firebase_authentication_tutorial/firestore.dart';
import 'package:firebase_authentication_tutorial/home_page.dart';
import 'package:firebase_authentication_tutorial/encrypt.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';


class SignInPage extends StatefulWidget {
  
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

   final TextEditingController companyNameController = TextEditingController();

  bool _value = false;

  bool _passwordVisible=true;

  var ptext,enctext;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(padding:const EdgeInsets.all(35.0),
            child: SingleChildScrollView(
              child: Column(

                children: <Widget>[            
                 const SizedBox(height: 100),
              
                  Stack(
                alignment: Alignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(right:175.0),
                    child: Image.asset('assets/images/im.png', 
                                     ),
                  ),
                  
                   
                     const Text(
                          "amtiss",
                          style:  TextStyle(fontSize: 35,),
                        ),
                   
                ]
              ),
              
              const SizedBox(height: 100),
                const  Align(
                     
                alignment: Alignment.centerLeft,
                    child:  Text(
                          "Company",
                                ),
                  ),
                const  SizedBox(height: 5),
              
              
                    TextField(
                              controller: companyNameController,
                              autocorrect: true,
                              decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Amtiss"),
                             ),
                  
              
                  const SizedBox(height: 15),
              
                 const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                          "Username",
                               ),
                  ),
                 const SizedBox(height: 5),
              
                 
                    TextField(
                      controller: userNameController,
                      autocorrect: true,
                      decoration:  const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "User123"),
              
                           
                            ),
                  
                 const  SizedBox(height: 15),
              
                const  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                          "Password",
                       
                        ),
                  ),
                  const SizedBox(height: 5),
              
                  
                    Container(
                      color: const Color(0xFFFFFFFF),
                      alignment: Alignment.topCenter,

                      child: TextField(
                        controller: passwordController,
               keyboardType: TextInputType.text,
                 obscureText: !_passwordVisible,
               decoration: InputDecoration(
                
                    border:const OutlineInputBorder(),
                    hintText: "********",
                   suffixIcon: IconButton(
                icon: Icon(
                  
                   _passwordVisible
                   ? Icons.visibility
                   : Icons.visibility_off,
                  // color: Theme.of(context).primaryColorDark,
                   ),
                onPressed: () {

                   setState(() {
                   _passwordVisible = !_passwordVisible;
               });
                   
                  
                 },
                ),
              ),
                    )
                    ),
                   const  SizedBox(height: 10),        
                               
                                  CheckboxListTile(
                                        
                                         controlAffinity: ListTileControlAffinity.leading,
                                                       title: const Text('Login with IP'),
                                                       
                                                      activeColor: const Color(0xFF00E5FF),
                                                      checkColor: Colors.white,
                                                      value: _value,
                                                onChanged: (value) {

                                                setState(() {
                                                  _value = value;
                                                 
                                                });
                                                 
                                                    
                                                  }
                                                      ),
                                 
                            
                          const  SizedBox(height: 15),
              
                   
                    InkWell(
                      child: Container(
                                   
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration:const BoxDecoration(  color: Color(0xFF00E5FF),
                                    shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                    
                                   
                             
                                    child:Align(alignment: Alignment.center,
                      child: Container(child: const Text("Login",style:TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.bold),))),
                    
                      ),
              
                      onTap: ()
                      async {

                        String cn=companyNameController.text;
                        String un=userNameController.text;
                        String pn=passwordController.text;

                        if(cn=='' || un=='' || pn=='')
                        {
                          Fluttertoast.showToast(
        msg: "Fill All the Fields!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0

    );
                        }

                        else{
                          if(passwordController.text.length<6)
                  {
Fluttertoast.showToast(
        msg: "Password Should be of atleast 6 Characters!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0

    );
                 }

                  else{

                    ptext=passwordController.text;
                    enctext=await MyEnc.encryptAES(ptext);

                    var abc=enctext.toString();

    var ab =await context.read<DB>().doesNameAlreadyExist(companyNameController.text.trim()
    ,userNameController.text.trim()
    ,abc.trim());

    if(ab==1)
    {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
    }
    
    
                   companyNameController.clear();
                  userNameController.clear();
                  passwordController.clear();

                                 //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  }

                        }

                      },
                    ),
                
              const SizedBox(height: 80),
              const Text(
                          "ver 4.0",
                          style:  TextStyle(fontSize: 15,),
                        ),
                        const SizedBox(height: 2),
                  
              
                ],
              ),
            ),
          )
      
    );
  }
}


