import 'package:flutter/material.dart';
import 'package:gazhome/componanet/appbarapp.dart';
import 'package:gazhome/componanet/colors.dart';
import 'package:gazhome/componanet/dialogapp.dart';

class Location extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Location();
  }
}

class _Location extends State<Location> {
  @override
  Widget build(BuildContext context) {
    ColorApp colorApp = new ColorApp();
    DialogApp dialogApp = new DialogApp();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarBack(),
        backgroundColor: colorApp.colorbody,
      ),
      backgroundColor: colorApp.colorbody,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          "assets/images/location.png",
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButton: MaterialButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.of(context).pushNamed("completlocation");
          },
          child: Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  color: colorApp.colorbgbuttonapp,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "موافق",
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
