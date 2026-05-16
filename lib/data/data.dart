
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List <Map<String,dynamic>> myTransactionsData = [
  {
    "icon": FaIcon(FontAwesomeIcons.burger , color: Colors.white,),
    "name": "Food" ,
    "totalAmount": "-\$45.00",
    "date": "Today",
    "color": Colors.yellow[700],
  },
  
  {
    "icon":  FaIcon(FontAwesomeIcons.bagShopping , color: Colors.white,),
    "name": "Shopping" ,
    "totalAmount": "-\$280.00",
    "date": "Today",
    "color": Colors.purple,
  },

  {
    "icon": FaIcon(FontAwesomeIcons.heartCircleCheck , color: Colors.white,),
    "name": "Health" ,
    "totalAmount": "-\$79.00",
    "date": "Yestarday",
    "color": Colors.green,
  },
  {
    "icon": FaIcon(FontAwesomeIcons.plane , color: Colors.white,),
    "name": "Travel" ,
    "totalAmount": "-\$350.00",
    "date": "Yestarday",
    "color": Colors.blue,
  },
  {
    "icon": FaIcon(FontAwesomeIcons.plane , color: Colors.white,),
    "name": "Travel" ,
    "totalAmount": "-\$350.00",
    "date": "Yestarday",
    "color": Colors.blue,
  },
];