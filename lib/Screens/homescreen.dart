import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:hadafy_app/Screens/more.dart';
import 'package:hadafy_app/widgets/homescreen_cards.dart';
import 'package:hadafy_app/widgets/homescreen_colors.dart';
import 'package:hadafy_app/widgets/homescreen_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.location_on),
        ),
        endDrawer: Drawer(),
        backgroundColor: brighter,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                      color: purple,
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                            top: 30,
                            right: -100,
                            child: circularContainer(300, lightpurple)),
                        Positioned(
                            top: -100,
                            left: -45,
                            child: circularContainer(width * .5, darkpurple)),
                        Positioned(
                            top: -180,
                            right: -30,
                            child: circularContainer(
                                width * .7, Colors.transparent,
                                borderColor: Colors.white38)),
                        Positioned(
                            top: 40,
                            left: 0,
                            child: Container(
                                width: width,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "مرحبا بك معنا في هدفي",
                                          style: TextStyle(
                                              fontFamily: ArabicFonts.Rakkas,
                                              package: 'google_fonts_arabic',
                                              color: Colors.white,
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        CircularProgressIndicator(
                                          value: .6,
                                          semanticsLabel: 'التقدم',
                                          strokeWidth: 10,
                                          backgroundColor: Colors.red,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "لاتتم الاعمال العظيمة بالقوة ، و لكن بالمثابرة",
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                          fontFamily: ArabicFonts.Cairo,
                                          package: 'google_fonts_arabic',
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text("لديك 10 نقاط  , استمر بالعمل",
                                        style: TextStyle(
                                            fontFamily: ArabicFonts.Cairo,
                                            package: 'google_fonts_arabic',
                                            color: Colors.yellow,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ],
                                ))),
                      ],
                    )),
              ),
              ////
              SizedBox(height: 20),

              Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: 200.0,
                        width: 325.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/man.jpg'),
                              fit: BoxFit.cover,
                              // colorFilter: ColorFilter.mode(
                              //     // Colors.blue.withOpacity(0.6),
                              //     BlendMode.darken)
                            )),
                      )),
                  Positioned(
                      top: 125.0,
                      left: 10.0,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 60.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ما هو هدفي؟',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontFamily: ArabicFonts.Cairo,
                                        package: 'google_fonts_arabic',
                                        fontWeight: FontWeight.w900),
                                    // style: GoogleFonts.montserrat(
                                    //     fontSize: 18.0,
                                    //     fontWeight: FontWeight.bold,
                                    //     textStyle:
                                    //         TextStyle(color: lightBlue)
                                    //         )
                                  ),
                                  Text(
                                    'اعرف  المزيد عن كيف يعمل هدفي',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: ArabicFonts.Changa,
                                        package: 'google_fonts_arabic',
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: darkgrey),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: darkseeBlue, size: 14.0),
                                ),
                              )
                            ],
                          )))
                ],
              ),
              SizedBox(height: 25.0),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('الانشطة الرياضيه',
                        style: TextStyle(
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: darkseeBlue)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage('assets/2.png'),
                                fit: BoxFit.fill)),
                      ))
                ],
              ),
              Container(
                  height: 350.0,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    coffeeListCard(
                        navigationFunction: () {
                          print('Navigsting To Drug Remainder Page');
                          // Navigator.push(
                          //     context,
                          // MaterialPageRoute(
                          //     builder: (context) => DrugRemainder()));
                        },
                        coffeeName: 'التمارين',
                        description: 'عرض التمارين الرياضيه وطريقة تنفيذها',
                        imgPath: 'assets/01.png',
                        titlefontsize: 26.5),
                    coffeeListCard(
                      navigationFunction: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (c) => More()));
                      },
                      coffeeName: 'التحديات',
                      titlefontsize: 26.5,
                      description:
                          'شارك الان في التحديات الموجوده واحصل علي نقاط اكثر',
                      imgPath: 'assets/gym.png',
                    ),
                    coffeeListCard(
                      coffeeName: 'انضم لماراثون',
                      titlefontsize: 26.5,
                      description:
                          'Schedule a time to notify you when you need to drink  ',
                      imgPath: 'assets/02.png',
                    )
                  ])),
//////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('زود حماسك ',
                        style: TextStyle(
                            fontFamily: ArabicFonts.Changa,
                            package: 'google_fonts_arabic',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: darkseeBlue)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage('assets/2.png'),
                                fit: BoxFit.fill)),
                      ))
                ],
              ),
              Container(
                  height: 350.0,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    coffeeListCard(
                        navigationFunction: () {
                          print('Navigsting To Drug Remainder Page');
                          // Navigator.push(
                          //     context,
                          // MaterialPageRoute(
                          //     builder: (context) => DrugRemainder()));
                        },
                        coffeeName: 'تكلم مع فريقك',
                        description:
                            'تكلم الان مع اشخاص حقيقين يجمعهم نفس هدفك ',
                        imgPath: 'assets/chat.png',
                        titlefontsize: 26.5),
                    coffeeListCard(
                      coffeeName: 'احجز معاد',
                      titlefontsize: 26.5,
                      description:
                          'احجز معاد مع الطبيب(نفسي -تغذية) او مع المدرب الشخصي',
                      imgPath: 'assets/appointment.png',
                    ),
                    coffeeListCard(
                      coffeeName: 'نصائح سريعه',
                      titlefontsize: 26.5,
                      description:
                          'تعرف علي نصائح سريعه من اجل حياه صحيه افضل ',
                      imgPath: 'assets/tips.png',
                    )
                  ])),

              ///
            ],
          )),
        ));
  }
}
