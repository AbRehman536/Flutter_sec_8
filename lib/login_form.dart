import 'package:flutter/material.dart';

class LoginFormDemo extends StatelessWidget {
  const LoginFormDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(children: [
        Text("LOGIN PAGE",style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.w900),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,right: 10,left: 15),
          child: TextField(
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: '123456789',
              prefixIcon: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
        ),
        ElevatedButton(onPressed: () {  }, child: Text("Login"),),
        Text("Don't have account ?"),
        TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.red,
          fontSize: 25,
        ),)),
      ],),
    );
  }
}
