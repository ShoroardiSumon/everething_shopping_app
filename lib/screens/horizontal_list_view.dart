import 'package:flutter/material.dart';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imagelocation: 'assets/images/category/shirt.png',
            imagecaption: 'Shirt',
          ),

          Category(
            imagelocation: 'assets/images/category/tshirt.PNG',
            imagecaption: 'T-Shirt',
          ),

          Category(
            imagelocation: 'assets/images/category/pant.PNG',
            imagecaption: 'Pant',
          ),

          Category(
            imagelocation: 'assets/images/category/formal.PNG',
            imagecaption: 'Formal',
          ),

          Category(
            imagelocation: 'assets/images/category/jersey.PNG',
            imagecaption: 'Jersey',
          ),

          Category(
            imagelocation: 'assets/images/category/hat.PNG',
            imagecaption: 'Hat',
          ),

          Category(
            imagelocation: 'assets/images/category/shoe.PNG',
            imagecaption: 'Shoe',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Category({
    this.imagelocation,
    this.imagecaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(imagelocation, width: 100.0, height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imagecaption, style: TextStyle(fontSize: 15, color: Colors.red),),
            )
          ),
        ),
      ),
    );
  }
}