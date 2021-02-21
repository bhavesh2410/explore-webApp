import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomBarColumn({this.heading, this.s1, this.s2, this.s3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: TextStyle(
              color: Colors.blueGrey[700],
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          s1,
          style: TextStyle(
              color: Colors.blueGrey[200],
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          s2,
          style: TextStyle(
              color: Colors.blueGrey[200],
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          s3,
          style: TextStyle(
              color: Colors.blueGrey[200],
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
