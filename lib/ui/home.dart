import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Time'),
        backgroundColor: Colors.black54,
      ),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.cyanAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Margherita',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black54,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tomato, Mozzarella, Basil',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Marinara',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black54,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Tomato, Garlic',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        ),
        /* width: 192.0,
      height: 96.0, 
      margin: EdgeInsets.only(left:15.0),*/
      )),
    );
  }
}

// Creates PizzaImageWidget(), class for drop-in use.
class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.jpg');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 400.0,);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0,),
      child:RaisedButton(
        child: Text('Order your Pizza'),
        color: Colors.white,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
  }
    void order(BuildContext context){
      var alert = AlertDialog(
        title: Text('Order Completed'),
        content:Text('Thanks for shopping.'),
      );
      showDialog(
        context:context,
        builder: (BuildContext context) {
          return alert;
        }
      );
    }
  }