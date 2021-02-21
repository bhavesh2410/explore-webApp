import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/carousel_images.dart';
import 'package:explore/widgets/featured_heading.dart';
import 'package:explore/widgets/featured_tile.dart';
import 'package:explore/widgets/floating_quick_access_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _isHovered = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(mediaQuery.width, 70),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Row(
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[100],
                      letterSpacing: 2
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                                style: TextStyle(color: _isHovered[0]
                                    ? Colors.blue[100]
                                    : Colors.grey[100]),
                              ),
                              SizedBox(height: 5,),
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
                                  style: TextStyle(color: _isHovered[1]
                                      ? Colors.blue[100]
                                      : Colors.grey[100])),
                              SizedBox(height: 5,),
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
                  child:
                      Column(
                        children: [
                          Text('SignUp', style: TextStyle(color: _isHovered[2]
                              ? Colors.blue[100]
                              : Colors.grey[100])),
                          SizedBox(height: 5,),
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
                  child:
                      Column(
                        children: [
                          Text('Login', style: TextStyle(color: _isHovered[3]
                              ? Colors.blue[100]
                              : Colors.grey[100])),
                          SizedBox(height: 5,),
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
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container( // image below the top bar
                  child: SizedBox(
                    height: mediaQuery.height * 0.45,
                    width: mediaQuery.width,
                    child: Image.asset(
                      'assets/images/cover.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(mediaQuery),
                    FeaturedHeading(mediaQuery),
                    FeaturedTile(mediaQuery),
                    CarouselImages(),
                    SizedBox(height: mediaQuery.height / 10),
                    BottomBar()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
