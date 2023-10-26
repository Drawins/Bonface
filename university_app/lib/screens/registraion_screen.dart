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


     body:  Padding(padding: EdgeInsets.all(20.0),
     
      child: Column(
      
        children: [ 
       const  Row(children: [
     Icon(Icons.person),
     SizedBox( width: 250, height: 20,
    child:  TextField(decoration: InputDecoration(
      hintText: 'Enter your full name:',
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
    const SizedBox(height: 20,),
     const    Row(children: [
     Icon(Icons.email_outlined),
     SizedBox( width: 250, height: 20,
    child:  TextField(decoration: InputDecoration(
      hintText: 'Enter your emailaddress:',
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
      const   SizedBox(height: 20,),

     const     Row(children: [
     Icon(Icons.https),
     SizedBox( width: 250, height: 20,
    child:  TextField(decoration: InputDecoration(
      hintText: 'Enter your password:',
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
    const SizedBox(height: 20,),
      const     Row(children: [
     Icon(Icons.https),
     SizedBox( width: 250, height: 20,
    child:  TextField(decoration: InputDecoration(
      hintText: 'Re-Enter your password',
       hintStyle:  TextStyle(fontFamily: AutofillHints.telephoneNumberLocalSuffix),
        contentPadding:  EdgeInsets.all(5), 
         border: OutlineInputBorder( 
        // borderRadius: BorderRadius.circular(400.0),
         borderSide:  BorderSide (width: 0)
    ),
    ),
    textAlign: TextAlign.center,
    
     )
     ),
     ],
     ),
   const  SizedBox(height: 100),
     Padding(  padding: const EdgeInsets.all(5) ,
     child: MaterialButton( 
      minWidth: 5,
      onPressed:(){}, color: Colors.black, 
     
      textColor: Colors.white,
      hoverColor: Colors.grey,
       child: const Text('Sign Up'),
         ),
         ),
         
        ],
      
        
      ),
      
     )


          
            );
        
  
 }
}