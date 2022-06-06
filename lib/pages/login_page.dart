import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/utils/routes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
            ElevatedButton(child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(90, 35) ), onPressed: (){ 
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            }  )
            
              ],
            ),
          )
        ],)
    );
    
  }
}
