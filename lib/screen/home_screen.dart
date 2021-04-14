import 'package:flutter/material.dart';
import 'package:kitchenappliances/screen/add_product.dart';
import 'package:kitchenappliances/screen/orderList.dart';

class Homescreen extends StatelessWidget {
  static const route = "./homescreen";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: size.width*0.8,
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Addproduct.route);
                  },
                  color: Colors.red,
                  child: Text("Add products")),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              width: size.width*0.8,
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(OrdersList.route);
                  },
                  color: Colors.red,
                  child: Text("Orders")),
            ),
          )
        ],
      ),
    );
  }
}
