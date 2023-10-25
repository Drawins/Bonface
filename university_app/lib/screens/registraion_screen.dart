import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget{
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
       
        toolbarHeight: 60,
       ),

        backgroundColor: Color.fromARGB(255, 144, 204, 231),


     body: const Padding(padding: EdgeInsets.all(30.0),
     
      child: Column(
    
        children: [
          TextField(decoration: InputDecoration(
            labelText: 'username',
            hintText: 'Enter your first name',
            
          ),
          ),
          Column(children: [
            TextField(decoration: InputDecoration(
            labelText: 'username',
            hintText: 'Enter your second name',
          ),
          ),
          ]
          ),
          Column(children: [
            TextField(decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your emailaddress',
          ),
          ),
           Column(children: [
            TextField(decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
          ),
          ),
          ],
          )
          ],
          )
        ],
      
        
      ),
      
     )


          
            );
        
  
 }
}