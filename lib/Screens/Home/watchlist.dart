import 'package:flutter/material.dart';
import 'package:halal_stocks/Costome_widgets/common_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:halal_stocks/constance/constance.dart';

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
        Text("GAINERS & LOSERS".toUpperCase(),
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
        SizedBox(height: defaultPadding),
        neumorphicContainer(
          context: context,
          child: Container(
            margin: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 7),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.white, width: 1.5))),
                      child: Text("Analysis",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(fontSize: 13.5)),
                    ),
                    SizedBox(width: defaultPadding + defaultPadding - 5),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 7),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.white, width: 1.5))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Performance",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontSize: 13.5)),
                          Row(
                            children: [
                              Image.asset(ConstanceData.upDownIcon,
                                  height: 6.5),
                              SizedBox(width: 7),
                              Text("From last week",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                          fontSize: 7.5, color: buttonColor)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                cosstomListTile(
                  context: context,
                  loser: true,
                  sellOrBuy: false,
                  nothing: true,
                ),
                Image.asset(ConstanceData.weekGraphIcon),
                Divider(color: greenColor, endIndent: 1.5, height: 0),
                cosstomListTile(
                  context: context,
                  loser: false,
                  sellOrBuy: false,
                  nothing: false,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: defaultPadding),
        Text("NEWS".toUpperCase(),
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline6),
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
