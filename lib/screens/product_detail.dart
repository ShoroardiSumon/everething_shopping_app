import 'package:everything/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final proddetailname;
  final proddetalpic;
  final proddetailprice;
  final proddetailoldprice;

  ProductDetails({
    this.proddetailname,
    this.proddetalpic,
    this.proddetailprice,
    this.proddetailoldprice,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
            child: Text('ShopEing',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),)
          ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
        ],
      ),      

      body: ListView(
             children: <Widget>[
              Container(
                height: 300,
                child: GridTile(
                  child: Container(
                    color: Colors.white,
                      child: Image.asset(widget.proddetalpic),
                  ),
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(widget.proddetailname,
                        style: TextStyle(fontSize: 20,color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      title: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text("\$${widget.proddetailoldprice}",
                              style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),
                            ),
                          ),
                           Expanded(
                            child: Text("\$${widget.proddetailprice}",
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the Size'),
                            actions: <Widget>[
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('L'),
                                color: Colors.red,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('XL'),
                                color: Colors.red,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('X'),
                                color: Colors.red,
                              ),
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.red,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Size'),
                          ),
                          Expanded(
                            child: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      ),
                    ), 
                  ),

                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: <Widget>[
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Red'),
                                color: Colors.red,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Green'),
                                color: Colors.green,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Blue'),
                                color: Colors.blue,
                              ),
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.red,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Color'),
                          ),
                          Expanded(
                            child: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose Quantity'),
                            actions: <Widget>[
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('1'),
                                color: Colors.red,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('2'),
                                color: Colors.red,
                              ),
                              RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('3'),
                                color: Colors.red,
                              ),
                            ],
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.red,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Qty'),
                          ),
                          Expanded(
                            child: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text('Buy now'),
                    ),
                  ),
                  
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.red,
                  ),

                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                  )

                ],
              ),

              Divider(),

              ListTile(
                title: Text('Product Details'),
                subtitle: Text("This premium T-shirt is as close to perfect as can be. It's optimized for all types of print and will quickly become your favorite T-shirt. Soft, comfortable and durable, this is a definite must-own."),
              ),

              Divider(),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product Name:', style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(widget.proddetailname),
                  )
                ],
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product Brand:', style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Brand X'),
                  )
                ],
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product Condition:', style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('New'),
                  )
                ],
              )

            ],
      ),
    );
  }
}