import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'tap.dart';
import 'dart:math';

class DateWidget extends StatelessWidget {
  final DateTime date;
  final double dateSize, daySize, monthSize;
  final Color dateColor, monthColor, dayColor;
  final Color selectionColor;
  final Color selectionDate;
  final DateSelectionCallback onDateSelected;
  DateWidget(
      {@required this.date,
      @required this.dateSize,
      @required this.daySize,
      @required this.monthSize,
      @required this.dateColor,
      @required this.monthColor,
      @required this.dayColor,
      @required this.selectionColor,
      @required this.selectionDate,
      this.onDateSelected});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Row(children: <Widget>[
          Container(
            child: Transform.rotate(
              angle: -90 * pi / 180,
              child: Text(
                new DateFormat("MMM").format(date).toUpperCase(), // Month
                style: TextStyle(
                  color: selectionColor,
                  fontSize: monthSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: selectionColor,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 15, right: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(date.day.toString(), // Date
                            style: TextStyle(
                              color: selectionDate,
                              fontSize: dateSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            )),
                        Text(
                            new DateFormat("E")
                                .format(date)
                                .toUpperCase(), // WeekDay
                            style: TextStyle(
                              color: dayColor,
                              fontSize: daySize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ))
                      ]))),
        ]),
        onTap: () {
          // Check if onDateSelected is not null
          if (onDateSelected != null) {
            // Call the onDateSelected Function
            onDateSelected(this.date);
          }
        });
  }
}
