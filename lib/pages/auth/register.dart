import 'package:flutter/material.dart';
import 'package:miniproject/pages/auth/login.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});

   TextEditingController name=TextEditingController();
   TextEditingController email=TextEditingController();
   TextEditingController password=TextEditingController();
//form validation

//global key 

final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
        child: Form(
          key:formkey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 30,),
            TextFormField(
              controller: name ,
              validator: (val){
              if(val==null ||val.isEmpty){
                return 'enter name';
              }
                
              },
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(),
                labelText: 'Name',
                labelStyle: TextStyle(),
                enabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                border:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.blue )),
                contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                          
              ),
            ),
            SizedBox(height: 12,),
            TextFormField(
              controller: email,
              validator: (val){
              if(val==null ||val.isEmpty){
                return 'enter Email';
              }
                
              },
               decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(),
                labelText: 'Email',
                labelStyle: TextStyle(),
                enabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                border:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.blue )),
                contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
          
              ),
            ),
            SizedBox(height: 12,),
          
            TextFormField(
              controller: password,
              validator: (val){
              if(val==null ||val.isEmpty){
                return 'enter Password';
              }else if(val.length<6){
                return 'minimun enter 6 letter';
              }
                
              },
               decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(),
                labelText: 'Password',
                labelStyle: TextStyle(),
                enabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                border:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
                focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.blue )),
                contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
          
              ),
            ),
            SizedBox(height: 12,),
          
            ElevatedButton(onPressed: (){
          if(formkey.currentState!.validate()){
             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
          }
            }, child: Text('Regsiter')),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('Already have account?'),
             TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, child: Text('Login'))
             ],)
          
          ],),
        ),
      ),
    );
  }
}