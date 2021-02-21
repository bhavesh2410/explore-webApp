import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  final Size mediaQuery;

  FloatingQuickAccessBar(this.mediaQuery);
  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {

  List<String> items = ['Destination', 'Dates', 'People', 'Experience'];
  List<Widget> rowElements = [];
  List<bool> _isHovering = [false, false, false, false];

  List<Widget> getRowElements() {
    rowElements.clear();
    for(int i=0; i<items.length; i++) {
      Widget element = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            _isHovering[i] = value;
          });
        },
        onTap: () {},
        child: Text(
          items[i],
          style: TextStyle(
            color: _isHovering[i]
                ? Colors.blue[200]
                : Colors.blue[600]
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.mediaQuery.height,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      rowElements.add(element);
      if(i<items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
        heightFactor: 1,
        child: Padding(
          padding: EdgeInsets.only(
              top: widget.mediaQuery.height * 0.40,
              right: widget.mediaQuery.width / 5,
              left: widget.mediaQuery.width / 5,
          ),
          child: Container(
            height: widget.mediaQuery.height * 0.1,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.only(
                  top: widget.mediaQuery.height / 50,
                  bottom: widget.mediaQuery.height / 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: getRowElements(),
                ),
              )
            ),
          ),
        ));
  }
}
