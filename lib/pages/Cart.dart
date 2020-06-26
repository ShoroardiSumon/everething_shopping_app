import 'package:everything/pages/cart_products.dart';
import 'package:everything/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
            child: Text('Cart',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),)
          ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
        ],
      ),

      body: CartProducts(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total'),
                subtitle: Text('\$320'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                child: Text('Check Out', style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
            
    );
  }
}