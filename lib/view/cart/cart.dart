import 'package:flutter/material.dart';
import 'package:gazhome/componanet/appbarapp.dart';
import 'package:gazhome/componanet/bottomNavigationBar.dart';
import 'package:gazhome/componanet/colors.dart';
import 'package:gazhome/componanet/dialogapp.dart';
import 'package:gazhome/provider/prov.dart';
import 'package:gazhome/view/cart/prodectcart.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Cart();
  }
}

class _Cart extends State<Cart> {
  ColorApp colorApp = new ColorApp();
  DialogApp dialogApp = new DialogApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarApp(),
        backgroundColor: colorApp.colorbody,
      ),
      backgroundColor: colorApp.colorbody,
      body: Consumer<Control>(builder: (context, val, child) {
        return ListView.builder(
            itemCount: 2,
            itemBuilder: (context, i) {
              return ProdectCart();
            });
      }),
      bottomNavigationBar: BottomNavigationBarApp(),
      floatingActionButton: MaterialButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.of(context).pushNamed("location");
          },
          child: Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  color: colorApp.colorbgbuttonapp,
                  borderRadius: BorderRadius.circular(10)),
              width: 200,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: colorApp.colorFontwhite,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "اتمام عملية الشراء",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: colorApp.colorFontwhite),
                  ),
                ],
              ))),
    );
  }
}
