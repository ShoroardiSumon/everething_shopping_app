import 'package:everything/pages/Cart.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Shoroardi Sumon',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              accountEmail: Text('sumonpust7@gmail.com'), 
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/images/user/sumon.jpg'),
              )
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.account_box, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pop(context);
              },
              child: ListTile(
                title: Text('About '),
                leading: Icon(Icons.help, color: Colors.black,),
              ),
            ),

          ],
        ),
    );
  }
}