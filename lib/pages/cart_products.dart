import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {

  var productsOnTheCart=[
    {
      'name':'Chinese Shirt',
      'picture':'assets/images/recent_products/red_shirt.jpg',
      'price': 799,
      'size': 'XL',
      'color':'Red',
      'quantity': 1,
    },
    {
      'name':'T-Shirt',
      'picture':'assets/images/recent_products/bottle_tshirt.jpg',
      'price': 299,
      'size': 'L',
      'color':'Black',
      'quantity': 2,
    },
    {
      'name':'Pant',
      'picture':'assets/images/recent_products/casual_pant.jpg',
      'price': 599,
      'size': 'M',
      'color':'White',
      'quantity': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (BuildContext context, int index) {
      return SingleCartProduct(
        cartProdName: productsOnTheCart[index]['name'],
        cartProdPic: productsOnTheCart[index]['picture'],
        cartProdPrice: productsOnTheCart[index]['price'],
        cartProdSize: productsOnTheCart[index]['size'],
        cartProdColor: productsOnTheCart[index]['color'],
        cartProdQty: productsOnTheCart[index]['quantity'],
      );
     },
    );
  }
}

class SingleCartProduct extends StatelessWidget {

  final cartProdName;
  final cartProdPic;
  final cartProdPrice;
  final cartProdSize;  
  final cartProdColor;
  final cartProdQty;

  SingleCartProduct({
    this.cartProdName,
    this.cartProdPic,
    this.cartProdPrice,
    this.cartProdSize,
    this.cartProdColor,
    this.cartProdQty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                      ListTile(
                        title: Text(cartProdName, style: TextStyle(color: Colors.red, fontSize: 16,),),

                        leading: Image.asset(cartProdPic, height: 90, width: 80,),

                        subtitle: Column(
                          children: <Widget>[
                            SizedBox(height: 5.0,),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text('Size:'),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(cartProdSize, style: TextStyle(color: Colors.red,),)
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text('Color:'),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(cartProdColor,style: TextStyle(color: Colors.red,),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0,),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text('\$$cartProdPrice', style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
               ],
              ),
            ),
          ),

          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_drop_up),
                  ),
                ),
                Container(
                  child: Text("$cartProdQty", style: TextStyle(color: Colors.red),),
                ),
                
                Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}