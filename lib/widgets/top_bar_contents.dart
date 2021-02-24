import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {

  final List _isHovered = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(mediaQuery.width, 70),
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey[200].withOpacity(widget.opacity),
        child: Center(
          child: Row(
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat',
                    color: Colors.blueGrey[100],
                    letterSpacing: 3),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: mediaQuery.width / 8),
                    InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovered[0] = value;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Discover',
                              style: TextStyle(
                                  color: _isHovered[0]
                                      ? Colors.blue[100]
                                      : Colors.grey[100]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Visibility(
                                maintainAnimation: true,
                                maintainSize: true,
                                maintainState: true,
                                visible: _isHovered[0],
                                child: Container(
                                  width: 20,
                                  height: 2,
                                  color: Colors.white,
                                ))
                          ],
                        )),
                    SizedBox(
                      width: mediaQuery.width / 40,
                    ),
                    InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovered[1] = value;
                          });
                        },
                        child: Column(
                          children: [
                            Text('Contact Us',
                                style: TextStyle(
                                    color: _isHovered[1]
                                        ? Colors.blue[100]
                                        : Colors.grey[100])),
                            SizedBox(
                              height: 5,
                            ),
                            Visibility(
                                maintainAnimation: true,
                                maintainSize: true,
                                maintainState: true,
                                visible: _isHovered[1],
                                child: Container(
                                  width: 20,
                                  height: 2,
                                  color: Colors.white,
                                ))
                          ],
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHovered[2] = value;
                  });
                },
                child: Column(
                  children: [
                    Text('SignUp',
                        style: TextStyle(
                            color: _isHovered[2]
                                ? Colors.blue[100]
                                : Colors.grey[100])),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainSize: true,
                        maintainState: true,
                        visible: _isHovered[2],
                        child: Container(
                          width: 20,
                          height: 2,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: mediaQuery.width / 90,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHovered[3] = value;
                  });
                },
                child: Column(
                  children: [
                    Text('Login',
                        style: TextStyle(
                            color: _isHovered[3]
                                ? Colors.blue[100]
                                : Colors.grey[100])),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                        maintainAnimation: true,
                        maintainSize: true,
                        maintainState: true,
                        visible: _isHovered[3],
                        child: Container(
                          width: 20,
                          height: 2,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
