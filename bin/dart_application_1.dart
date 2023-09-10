import 'dart:developer';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'jsont.dart';
 
void main(List<String> args) {
  List<Map> Mealss = [
  {
    "name": "Burger",
    "image": "20",
    "extras": {
      "bread": [
        {"size": "big", "price": "5"},
        {"size": "medium", "price": "3"},
        {"size": "small", "price": "2"},
      ],
      "cheese": [
        {"quantity": "50 gm", "price": "10"},
        {"quantity": "20 gm", "price": "5"},
        {"quantity": "20 gm", "price": "5"},
      ]
    },
    "ingreditns": [
      {
        "beefburger": ["meat", "anion", "olives"],
        "price": 20,
        "currency": "nis"
      },
      {
        "checkenBurger": ["checkin", "tomato"],
        "price": 15,
        "currency": "nis"
      }
    ]
  }
];
   log('data => ');
   Data data = Data(Mealss[0]);
   log('dataCheese => ${data.extras!.cheese}');
   log('dataBread => ${data.extras!.bread}');
   log('dataBurger => ${data.burgerList!}');

   log('dataBread => ${data.extras!.bread.toString()}');
   log('dataCheese => ${data.extras!.cheese.toString()}');
   data.burgerList!.forEach((element) {
    log('dataBurger => ${element.toString()}');
   
   });
   }
