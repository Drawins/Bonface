import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return  Scaffold(
     appBar: AppBar(
       title: const Text('Sterling University'),
       titleSpacing: 00.0,
       surfaceTintColor: Colors.white,
       backgroundColor: Colors.black,
       titleTextStyle: const TextStyle (color: Colors.white,
       fontSize: 15,
       ),
       
        toolbarHeight: 60,
       ),
        backgroundColor: Colors.white,
        
   body:  Column(
    children: [
     const  SizedBox(height: 33,),
      TextField(decoration: 
      InputDecoration(
        
        hintText: 'Enter your username:',
        hintStyle: const TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
        contentPadding: const EdgeInsets.all(5), 
         border: OutlineInputBorder( 
         borderRadius: BorderRadius.circular(400.0),
         borderSide: const BorderSide (width: 2)
         
         )
      ),
      textAlign: TextAlign.center,
      
      ),
    ],
   ),
  );

 }
}