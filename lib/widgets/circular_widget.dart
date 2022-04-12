import 'package:flutter/material.dart';

Widget circularWidget({required String value, required double currentValue}){

  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value, style: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: 'Messiri'),),
              const Text('Gross Pay', style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontFamily: 'Messiri'))
            ],
          ),
          SizedBox(
            height: 130,
            width: 130,
            child: CircularProgressIndicator(
              value: 0.6,
              strokeWidth: 5,
              backgroundColor: Colors.grey[300],
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    ],
  );
}