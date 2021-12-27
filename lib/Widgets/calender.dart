import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
                       padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 15.0),
             child: Container(
               decoration: BoxDecoration( border: Border.all(color: Colors.grey),
                                  shape: BoxShape.rectangle, borderRadius: const BorderRadius.all(Radius.circular(10),)),
               child:
        
                TableCalendar(                
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
),
             ),
           );
  }
}