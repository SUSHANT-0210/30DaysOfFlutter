import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name =" ";
  bool changeShape = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_pic.png"),
          SizedBox(height: 20),
          Text("Welcome $name", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.blue, )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
            
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
              onChanged: (value){
                name=value;
                setState(() {});


              },
            ),
            TextFormField( obscureText: true , decoration: InputDecoration(hintText: "Enter Password", labelText: "Password"),),
            SizedBox(height: 20),
            InkWell(
              onTap: () async{
                setState(() {
                  changeShape =true;
                                    
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);

              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeShape?50:100,
                height: 50,
                
                alignment: Alignment.center,
                
                decoration: BoxDecoration(
                  // shape: changeShape? BoxShape.circle: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeShape? 50: 10),
                  color: Colors.deepPurple
                      
                ),
                
                child: changeShape?Icon(Icons.done_all_sharp,color: Colors.white) : Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
            // ElevatedButton(child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(90, 35) ), onPressed: (){ 
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);
            // }  )
            
              ],
            ),
          )
        ],)
    );
    
  }
}
