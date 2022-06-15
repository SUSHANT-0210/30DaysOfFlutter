import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeShape = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    
    if ( _formKey.currentState != null &&  _formKey.currentState!.validate()) {
      setState(() {
        changeShape = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeShape = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/welcome.png"),
                SizedBox(height: 40),
                Text("Welcome $name",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          
                          if (value?.isEmpty ?? true){
                            return "Password cannot be empty";
                          }
                          else if (  value!.length < 6){
                            return "Password length should be atleast 6";

                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                  
                      SizedBox(height: 20),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeShape ? 50 : 10),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeShape ? 50 : 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeShape
                                ? Icon(Icons.done_all_sharp,
                                    color: Colors.white)
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                      // ElevatedButton(child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(90, 35) ), onPressed: (){
                      //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // }  )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
