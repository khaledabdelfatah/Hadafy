import 'package:flutter/material.dart';
import 'package:hadafy_app/widgets/homescreen_colors.dart';

import 'dart:math';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Rank extends StatefulWidget {
  @override
  _RankState createState() => _RankState();
}

class _SalesData {
  final int year;
  final int sales;

  _SalesData(this.year, this.sales);
  // Returns Jan.1st of that year as date.
  DateTime get date => DateTime(this.year, 1, 1);
}

/// Generate some random data.
List<_SalesData> _genRandData() {
  final random = Random();
  // Returns an increasing series with some fluctuations.
  return [
    for (int i = 2005; i < 2020; ++i)
      _SalesData(i, (i - 2000) * 40 + random.nextInt(100)),
  ];
}

class _RankState extends State<Rank> {
  bool _animate = true;
  bool _defaultInteractions = true;
  bool _includeArea = true;
  bool _includePoints = true;
  bool _stacked = true;
  charts.BehaviorPosition _titlePosition = charts.BehaviorPosition.top;

  // Data to render.
  List<_SalesData> _series1;

  @override
  void initState() {
    super.initState();
    this._series1 = _genRandData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: extraDarkPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cached, size: 33),
            SizedBox(width: 10),
            Text(
              "ترتيبك",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "انت في المركز",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: brighter,
                      ),
                    ),
                    Text(
                      "شارك في تحديات اكثر",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  "4",
                  style: TextStyle(fontSize: 50, color: lightOrange),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey, width: 1)),
              ),
            ),
            Text(
              "لقد حققت 70% من هدفك , استمر",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LinearPercentIndicator(
                  // width: 140.0,
                  width: 230,
                  // lineHeight: 14.0,
                  lineHeight: 20,
                  // percent: 0.5,
                  percent: 0.7,
                  backgroundColor: Colors.grey[300],
                  // progressColor: Colors.blue,
                  progressColor: brighter,
                  alignment: MainAxisAlignment.center,
                ),
                Text(
                  "يتبقي 30% ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "الهدف: خسارة 5 كيلو من الوزن",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 300,
              child: charts.TimeSeriesChart(
                /*seriesList=*/ [
                  charts.Series<_SalesData, DateTime>(
                    id: 'Sales-1',
                    colorFn: (_, __) =>
                        charts.MaterialPalette.blue.shadeDefault,
                    domainFn: (_SalesData sales, _) => sales.date,
                    measureFn: (_SalesData sales, _) => sales.sales,
                    data: this._series1,
                  ),
                ],
                defaultInteractions: this._defaultInteractions,
                defaultRenderer: charts.LineRendererConfig(
                  // includePoints: this._includePoints,
                  includeArea: this._includeArea,
                  stacked: this._stacked,
                ),
                animate: this._animate,
                behaviors: [
                  // Add title.
                  charts.ChartTitle(
                    'نشاطك خلال اخر 30 يوم',
                    behaviorPosition: _titlePosition,
                  ),
                  // Add legend.
                  // charts.SeriesLegend(position: _legendPosition),
                  // Highlight X and Y value of selected point.
                  charts.LinePointHighlighter(
                    showHorizontalFollowLine:
                        charts.LinePointHighlighterFollowLineType.all,
                    showVerticalFollowLine:
                        charts.LinePointHighlighterFollowLineType.nearest,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
