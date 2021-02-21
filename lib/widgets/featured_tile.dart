import 'package:flutter/material.dart';

class FeaturedTile extends StatelessWidget {
  final Size mediaQuery;

  FeaturedTile(this.mediaQuery);

  @override
  Widget build(BuildContext context) {
    List<String> _pictures = [
      'assets/images/trekking.jpg',
      'assets/images/photography.jpeg',
      'assets/images/animals.jpg'
    ];

    List<String> names = [
      'Trekking',
      'Photography',
      'Animals'
    ];

    List<Widget> getTile() {
      List<Widget> items = [];
      for(int i=0; i<_pictures.length; i++) {
        items.add(Column(
            children: [
              SizedBox(
                height: mediaQuery.height / 6,
                width: mediaQuery.width / 3.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    _pictures[i],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: mediaQuery.height / 70
                ),
                child: Text(
                  names[i],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),),
              )]));
      }
      return items;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: getTile(),
      ),
    );
  }
}
