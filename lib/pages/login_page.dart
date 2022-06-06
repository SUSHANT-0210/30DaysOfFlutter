import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_pic.png"),
          SizedBox(height: 20),
          Text("Welcome", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.blue, )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
            
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
            ),
            TextFormField( obscureText: true , decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"),),
            SizedBox(height: 20),
            ElevatedButton(child: Text("Login"),style: TextButton.styleFrom(),onPressed: (){print("Hello Sushant");})
            
              ],
            ),
          )
        ],)
    );
    
  }
}
