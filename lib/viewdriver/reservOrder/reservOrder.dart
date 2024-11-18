import 'package:flutter/material.dart';
import 'package:gazhome/componanet/appbarapp.dart';
import 'package:gazhome/componanet/bottomNavigationBar.dart';
import 'package:gazhome/componanet/bottonapp.dart';
import 'package:gazhome/componanet/colors.dart';
import 'package:gazhome/componanet/dialogapp.dart';
import 'package:gazhome/provider/prov.dart';
import 'package:gazhome/viewdriver/reservOrder/bodyReservOrder.dart';
import 'package:provider/provider.dart';

class ReservOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReservOrder();
  }
}

class _ReservOrder extends State {
  ColorApp colorApp = new ColorApp();
  DialogApp dialogApp = new DialogApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarApp(),
        backgroundColor: colorApp.colorbody,
      ),
      backgroundColor: colorApp.colorbody,
      body: Consumer<Control>(builder: (context, val, child) {
        return Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return BottonRservOrder(
                      title: "جدة",
                      color: i == 0
                          ? colorApp.colorbgbuttonapp
                          : colorApp.colorbgbutton1,
                      colorfont: i == 0
                          ? colorApp.colorFontwhite
                          : colorApp.colorFontblack,
                      func: () {},
                      active: i == 0 ? false : true,
                    );
                  }),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, i) {
                      return BodyReservOrder();
                    })),
          ],
        );
      }),
      bottomNavigationBar: BottomNavigationBarAppDriver(),
    );
  }
}
