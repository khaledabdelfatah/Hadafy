import 'package:flutter/material.dart';
import 'package:hadafy_app/widgets/homescreen_colors.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String _selectedDate = 'اضغط لاختيار المعاد';
  DateTime date = new DateTime.now();

  static const menuItems = <String>[
    'مدرب 1',
    'مدرب 2',
    'مدرب 3',
    'طبيب 1',
    'طبيب 2',
  ];

  final List<DropdownMenuItem<String>> dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String btn1SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: extraDarkPurple,
        title: Text(
          "تكلم مع الطبيب - المدرب",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // SizedBox(height: 10),
              Text(
                "سبب التواصل",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    labelStyle: TextStyle(fontSize: 20),
                    suffixStyle: TextStyle(color: Colors.green),
                  ),
                  style: TextStyle(fontSize: 20),
                  maxLines: 8,
                  onChanged: (text) {},
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey[200],
                      color: bottonTitleTextColor,
                    ),
                    // color:
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                            child: Text(
                              _selectedDate,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                            onTap: () {
                              _selectDate();
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () {
                              _selectDate();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "ميعاد المكالمة",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey[200],
                      color: bottonTitleTextColor,
                    ),
                    child: Center(
                      child: DropdownButton(
                        value: btn1SelectedVal,
                        hint: Text("اختر المدرب"),
                        items: dropDownMenuItems,
                        onChanged: (String newValue) {
                          setState(() {
                            btn1SelectedVal = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  Text(
                    "تريد مكالمة",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey[200],
                      color: bottonTitleTextColor,
                    ),
                    child: FlatButton(
                      color: bottonTitleTextColor,
                      onPressed: () {},
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        "الغاء",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.grey[200],
                      color: bottonTitleTextColor,
                    ),
                    child: FlatButton(
                      color: bottonTitleTextColor,
                      onPressed: () {},
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                        "تاكيد الميعاد",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "انت في الوضع التجريبي مسموح لك مكالمة في الشهر",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10.0),
                //   color: Colors.green,
                // ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Text(
                  "عند تاكيدك للميعاد سيتم ارسال اشعار اليك يفيد تاكيدك و مرفق معه الميعاد",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectDate() {
    showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1901),
      lastDate: DateTime(2099),
    ).then((DateTime value) {
      if (value != null) {
        setState(() {
          // setDate(value);
          date = value;
          _selectedDate = "${date.day}-${date.month}-${date.year}";
        });
      }
    });
  }

  // Future<void> _selectDate(BuildContext context) async {

  //   final DateTime d = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2015),
  //     lastDate: DateTime(2020),
  //   );
  //   if (d != null)
  //     setState(() {
  //       _selectedDate = "${d.day} - ${d.month} - ${d.year}";
  //     });
  // }
}
