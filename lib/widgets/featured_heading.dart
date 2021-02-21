import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  final Size mediaQuery;

  FeaturedHeading(this.mediaQuery);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Featured',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500
            ),
          ),
          Expanded(
              child: Text(
                'Unique widlife tours & destinations',
                textAlign: TextAlign.end,
              ))
        ],
      ),
    );
  }
}
