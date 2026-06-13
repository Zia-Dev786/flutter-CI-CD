import 'package:flutter/material.dart';
import 'package:miniproject/pages/auth/register.dart';
import 'package:miniproject/pages/home/home.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

TextEditingController email=TextEditingController();
TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          SizedBox(height: 40,),
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'Email',
              enabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
              border:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
              focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.blue )),
              contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
              prefixIcon: Icon(Icons.email)
            ),
          ),
          SizedBox(height: 12,),
          TextField(
            controller: password,
            obscureText: true,
            obscuringCharacter: '*',
             decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
              border:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey )),
              focusedBorder:OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.blue )),
              contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility)
            ),
          ),
          SizedBox(height: 12,),
          ElevatedButton(onPressed: (){
            if(email.text.isEmpty  && password.text.isEmpty){
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text('Validation'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Please enter email and password'),
                    Text('Please enter email and password'),
                    Text('Please enter email and password'),
                  ],
                ),
                actions: [TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancel'))],
              ),);
            }else{
            print('Email   ${email.text}');
            print('password   ${password.text}');
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            }
            
          }, child: Text('Login')),
          SizedBox(height: 12,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text('Already have account?'),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
          }, child: Text('Register'))
         ],)
        
        ],),
      ),
    );
  }
}