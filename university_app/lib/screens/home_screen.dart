import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return  Scaffold(
     appBar: AppBar(
       title: const Text('Sterling University'),
       titleSpacing: 00.0,
      centerTitle: true ,
       surfaceTintColor: Colors.white,
       backgroundColor: Colors.black,
       titleTextStyle: const TextStyle (color: Colors.white,
       fontSize: 15,
       ),
       
        toolbarHeight: 50,
       ),
        backgroundColor:const Color.fromARGB(255, 175, 219, 240),
        
   body:const Padding(
    padding:  EdgeInsets.all(30.0),
    child:  Column( 
  
    
    children: [
      Padding(padding:EdgeInsets.fromLTRB(20,15,0,15)),
     Row( children :[
        Icon(Icons.person),
       SizedBox(width: 250,height: 50,
     child:  TextField(decoration: 
      InputDecoration(
        hintText: 'Enter your username:',
        hintStyle:  TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
        contentPadding:  EdgeInsets.all(0), 
         border: OutlineInputBorder( 
         
         borderSide:  BorderSide (width: 2)
         )
         
      ),
      maxLength: 10,
      minLines:1,
      textAlign: TextAlign.center,
      ),
     ),
     ],
     ),


     ButtonBar(),

     
     Row(children: [
     Icon(Icons.https),
     SizedBox( width: 250, height: 30,
    child:  TextField(decoration: InputDecoration(
      labelText: 'password',
      hintText: 'Enter your password',
       hintStyle:  TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
        contentPadding:  EdgeInsets.all(5), 
         border: OutlineInputBorder( 
        // borderRadius: BorderRadius.circular(400.0),
         borderSide:  BorderSide (width: 1)
    ),
    ),
    textAlign: TextAlign.center,
    
     )
     ),
     ],
     ),
     
     
     ButtonBar(buttonPadding: EdgeInsets.all(6),),


Column(
      children:  [MaterialButton
      (onPressed: null, child: Text('LOG IN') ,)],
     ),


    // TextButton(onPressed:  , child: child)
    SizedBox( 
      child: Text
      ('If you dont have an account sign up.',
      textAlign: TextAlign.center,
      
      ),
      
    ),
    
    ],
  //  child: MaterialButton(onPressed: onPressed)
  //  mainAxisAlignment: MainAxisAlignment.center,
   ),
   ),
  );
   
 }
}