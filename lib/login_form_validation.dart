import 'package:flutter/material.dart';

class LoginFormValidationDemo extends StatefulWidget {
  const LoginFormValidationDemo({super.key});

  @override
  State<LoginFormValidationDemo> createState() => _LoginFormValidationDemoState();
}

class _LoginFormValidationDemoState extends State<LoginFormValidationDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          padding: const EdgeInsets.all(8),
          child: TextField(
            controller: emailController,
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
          padding: const EdgeInsets.all(8),
          child: TextField(
            controller: passwordController,
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
        ElevatedButton(onPressed: () {
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Email is empty"))
            );
            return ;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password is empty")));
            return;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Password must be more than 8 digits")),
            );
          }
        }, child: Text("Login"),),
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
