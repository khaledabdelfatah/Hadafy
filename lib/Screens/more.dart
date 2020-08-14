import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:hadafy_app/widgets/homescreen_colors.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightBlue,
      body: Container(
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "تحديات اكثر , نقاط اكثر",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  package: 'google_fonts_arabic',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/run.jpg",
                  fit: BoxFit.fill,
                  width: width - 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "قم بالجري مسافة 10 كم",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: ArabicFonts.Lateef,
                  package: 'google_fonts_arabic',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "اجري 10 كم و شاركنا بفيديو لك و لقطه شاشه لاي برنامج يحسب عدد الخطوات",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: ArabicFonts.Tajawal,
                  package: 'google_fonts_arabic',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    // color: Colors.white,
                    color: bottonTitleTextColor,
                    onPressed: () {},
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "شارك",
                      style: TextStyle(
                        fontFamily: ArabicFonts.Amiri,
                        package: 'google_fonts_arabic',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/run3.gif",
                  fit: BoxFit.fill,
                  width: width - 50,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "قم بعمل 20 تمرينة بطن",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: ArabicFonts.Lateef,
                  package: 'google_fonts_arabic',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "شاركنا بفيديو",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: ArabicFonts.Changa,
                  package: 'google_fonts_arabic',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    // color: Colors.white,
                    color: bottonTitleTextColor,
                    onPressed: () {},
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "شارك",
                      style: TextStyle(
                        fontFamily: ArabicFonts.Amiri,
                        package: 'google_fonts_arabic',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
