import 'package:everything/pages/Cart.dart';
import 'package:everything/screens/drawer.dart';
import 'package:everything/screens/horizontal_list_view.dart';
import 'package:everything/screens/image_carousel.dart';
import 'package:everything/screens/products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext scontext) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('ShopEing',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
        ],
      ),
      drawer: DrawerView(),

      body: ListView(
        children: <Widget>[
          ImageCarousel(),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.all(0.0),
            child: Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),textAlign: TextAlign.center,),
          ),
          
          Divider(color: Colors.red,),

          HorizontalListView(),

          Divider(color: Colors.red,),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('Recent Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),textAlign: TextAlign.center,),
          ),

          Container(
            height: 350,
            child: Products(),
          ),

          SizedBox(height: 20,),

          Container(
            height: 300,
            decoration: BoxDecoration(color: Colors.red,),
            child: Text('Test Data', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
          )

        ],
      ),

    );
  }
}