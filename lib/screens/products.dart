import 'package:everything/screens/product_detail.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var productslist = [
    {
      'name':'Chinese Shirt',
      'picture':'assets/images/recent_products/red_shirt.jpg',
      'price': 799,
      'old_price': 999,
    },

    {
      'name':'Chinese Shirt',
      'picture':'assets/images/recent_products/white_shirt.jpg',
      'price': 799,
      'old_price': 999,
    },

    {
      'name':'Shirt',
      'picture':'assets/images/recent_products/light_blue_shirt.jpg',
      'price': 599,
      'old_price': 699,
    },

    {
      'name':'T-Shirt',
      'picture':'assets/images/recent_products/bottle_tshirt.jpg',
      'price': 299,
      'old_price': 399,
    },

    {
      'name':'T-Shirt',
      'picture':'assets/images/recent_products/patent_tshirt.jpg',
      'price': 299,
      'old_price': 399,
    },

    {
      'name':'Pant',
      'picture':'assets/images/recent_products/casual_pant.jpg',
      'price': 599,
      'old_price': 699,
    },

    {
      'name':'Cotton Pant',
      'picture':'assets/images/recent_products/cotton_pant.jpeg',
      'price': 699,
      'old_price': 799,
    },

    {
      'name':'Pant',
      'picture':'assets/images/recent_products/navy_blue_pant.jpg',
      'price': 499,
      'old_price': 599,
    },

    {
      'name':'Pant',
      'picture':'assets/images/recent_products/pants.jpg',
      'price': 499,
      'old_price': 599,
    },

    {
      'name':'Hudi',
      'picture':'assets/images/recent_products/hudi.jpeg',
      'price': 799,
      'old_price': 899,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productslist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleProduct(
          prodname: productslist[index]['name'],
          prodpic: productslist[index]['picture'],
          prodprice: productslist[index]['price'],
          prodoldprice: productslist[index]['old_price'],
        );
      }
    );
  }
}

class SingleProduct extends StatelessWidget {

  final prodname;
  final prodpic;
  final prodprice;
  final prodoldprice;

  SingleProduct({
    this.prodname,
    this.prodpic,
    this.prodprice,
    this.prodoldprice
  });

  @override
  Widget build(BuildContext context) {
    return Card(     
        child: Hero(
          tag: Text('hero 1'),
            child: Material(
            elevation: 0.0,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(
                  proddetailname: prodname,
                  proddetalpic: prodpic,
                  proddetailprice: prodprice,
                  proddetailoldprice: prodoldprice,
              ))),

              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prodname, style: TextStyle(fontWeight: FontWeight.bold),),
                    title: Text('\$$prodprice', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800),),
                    subtitle: Text('\$$prodoldprice', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough),),
                  ),
                ),
                child: Image.asset(prodpic, fit: BoxFit.cover,),
              ),
            ),
          ),
        ),
    );
  }
}