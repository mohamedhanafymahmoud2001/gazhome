import 'package:flutter/material.dart';
import 'package:gazhome/componanet/appbarapp.dart';
import 'package:gazhome/componanet/bottomNavigationBar.dart';
import 'package:gazhome/componanet/bottonapp.dart';
import 'package:gazhome/componanet/colors.dart';
import 'package:gazhome/componanet/dialogapp.dart';
import 'package:gazhome/provider/prov.dart';
import 'package:gazhome/view/home/prodect.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
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
          return Container(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 200,
                    child: Image.asset("assets/images/panner.png")),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, i) {
                      return BottonHome(
                          title: "اسطوانات الغاز",
                          color: colorApp.colorbgbutton2,
                          colorfont: colorApp.colorbgbutton1,
                          func: () {});
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 10, // Space between columns
                          mainAxisSpacing: 10, // Space between rows
                          childAspectRatio:
                              0.47, // نسبة العرض إلى الطول، وهنا 1:2 (أي الطول ضعف العرض)
                        ),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Prodect();
                        }),
                  ),
                ),
              ],
            ),
          );
        }),
        bottomNavigationBar: BottomNavigationBarApp());
  }
}
