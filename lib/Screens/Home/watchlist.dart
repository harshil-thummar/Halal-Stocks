import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class WatchlistPage extends StatefulWidget {
  @override
  _WatchlistPageState createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(defaultPadding),
      children: [
        Text("GAINERS & LOSERS",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline6),
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: neumorphicContainer(
                context: context,
                child: Container(
                  margin: EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailrow(
                          title: 'DAX',
                          gainerORloser: true,
                          percentage: '+0.16%'),
                      detailrow(
                          title: 'DAX',
                          gainerORloser: true,
                          percentage: '+0.18%'),
                      detailrow(
                          title: 'DAX',
                          gainerORloser: true,
                          percentage: '+0.14%'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 5,
              child: neumorphicContainer(
                context: context,
                child: Container(
                  margin: EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailrow(
                          title: 'DAX',
                          gainerORloser: false,
                          percentage: '-0.20%'),
                      detailrow(
                          title: 'DAX',
                          gainerORloser: false,
                          percentage: '-0.2%'),
                      detailrow(
                          title: 'DAX',
                          gainerORloser: false,
                          percentage: '+0.20%'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget detailrow({
    required String title,
    required String percentage,
    required bool gainerORloser,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        SizedBox(
            width: 95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                gainerORloser
                    ? Icon(Icons.arrow_drop_up, color: greenColor, size: 35)
                    : Icon(Icons.arrow_drop_down, color: redColor, size: 35),
                Text(percentage)
              ],
            )),
      ],
    );
  }
}
