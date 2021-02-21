import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bottom_bar_column.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomBarColumn(
                heading: 'ABOUT',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              SizedBox(width: 20,),
              BottomBarColumn(
                heading: 'HELP',
                s1: 'Payment',
                s2: 'Cancellation',
                s3: 'FAQ',
              ),
              SizedBox(width: 20,),
              BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Twitter',
                s2: 'Facebook',
                s3: 'Youtube',
              ),
              SizedBox(width: 20,),
              // Container(
              //   height: 80,
              //   width: 1,
              //   color: Colors.blueGrey[800],
              // ),
              // SizedBox(
              //   width: 20,
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       mainAxisSize: MainAxisSize.min,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'E-mail: ',
              //           style: TextStyle(
              //               color: Colors.blueGrey[300],
              //               fontSize: 16
              //           ),
              //         ),
              //         Flexible(
              //           child: Text(
              //             'abc123@explore.com',
              //             style: TextStyle(
              //                 color: Colors.blueGrey[100],
              //                 fontSize: 16
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //     SizedBox(height: 5,),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       mainAxisSize: MainAxisSize.min,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Address: ',
              //           style: TextStyle(
              //               color: Colors.blueGrey[300],
              //               fontSize: 16
              //           ),
              //         ),
              //         Flexible(
              //           child: Text(
              //             '123, ABR Road, XYZ, PQ - 56789',
              //             overflow: TextOverflow.ellipsis,
              //             maxLines: 3,
              //             style: TextStyle(
              //                 color: Colors.blueGrey[100],
              //                 fontSize: 16
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            width: double.maxFinite,
            height: 1,
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20,),
          Text(
            'Copyright © 2021 | EXPLORE',
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}
