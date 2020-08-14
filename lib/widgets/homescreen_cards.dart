import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:hadafy_app/widgets/homescreen_colors.dart';

coffeeListCard(
    {String imgPath,
    String coffeeName,
    String description,
    double titlefontsize = 32.0,
    Function navigationFunction}) {
  return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
          height: 300.0,
          width: 225.0,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(children: [
                  Container(height: 290.0),
                  Positioned(
                      top: 75.0,
                      child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 260.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: lightblack),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 60.0,
                                ),
                                Text(
                                  coffeeName,
                                  style: TextStyle(
                                      fontFamily: ArabicFonts.Cairo,
                                      package: 'google_fonts_arabic',
                                      fontSize: titlefontsize,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  description,
                                  style: TextStyle(
                                      fontFamily: ArabicFonts.Changa,
                                      package: 'google_fonts_arabic',
                                      fontSize: 14.0,
                                      // fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        navigationFunction();
                                      },
                                      child: Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: darkgrey),
                                          child: Center(
                                              child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: darkseeBlue,
                                                  size: 15.0))),
                                    )
                                  ],
                                )
                              ]))),
                  Positioned(
                      left: 60.0,
                      top: 25.0,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain))))
                ]),
              ],
            ),
          )));
}
