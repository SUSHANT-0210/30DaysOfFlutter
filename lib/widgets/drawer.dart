import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://www.princeton.edu/sites/default/files/styles/half_2x/public/images/2022/02/KOA_Nassau_2697x1517.jpg?itok=iQEwihUn";
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          children :[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                
                margin: EdgeInsets.zero,
                accountName: Text("Sushant Chaudhary", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),) ,
                accountEmail: Text("sushant.chaudhary123@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
              ),
              ListTile(leading: Icon(CupertinoIcons.home), title: Text("Home", textScaleFactor: 1.5,),  ),
              ListTile(leading: Icon(CupertinoIcons.profile_circled), title: Text("Profile", textScaleFactor: 1.5,), ),
              ListTile(leading: Icon(CupertinoIcons.mail), title: Text("Email", textScaleFactor: 1.5,), ),
              

          ]
        ),
      ),
    );
    
  }
}