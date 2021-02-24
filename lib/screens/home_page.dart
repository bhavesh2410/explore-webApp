import 'package:explore/widgets/app_drawer.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/carousel_images.dart';
import 'package:explore/widgets/featured_heading.dart';
import 'package:explore/widgets/featured_tile.dart';
import 'package:explore/widgets/floating_quick_access_bar.dart';
import 'package:explore/widgets/responsive_widget.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _isHovered = [false, false, false, false, false];
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'EXPLORE',
          style: TextStyle(
            color: Colors.blueGrey[100],
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            letterSpacing: 3
          ),
        ),
      )
          : PreferredSize(
              preferredSize: Size(mediaQuery.width, 70),
              child: TopBarContents(_opacity),
            ),
      drawer: AppDrawer(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  // image below the top bar
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
