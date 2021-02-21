import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  List<bool> _isHovering = [];
  List<bool> _isSelected = [];
  final List<String> images = [
    'assets/images/asia.jpg',
    'assets/images/africa.jpg',
    'assets/images/europe.jpg',
    'assets/images/south_america.jpg',
    'assets/images/australia.jpg',
    'assets/images/antarctica.jpg',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA',
  ];

  var _current = 0;
  var _controller = new CarouselController();

  @override
  void initState() {
    super.initState();
    _isHovering = List.filled(images.length, false);
    _isSelected = List.filled(images.length, false);
    _isSelected[0] = true;
  }

  List<Widget> getImages() {
    return images
        .map((img) => ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  List<Widget> getRowElements(mediaQuery) {
    List<Widget> items = [];
    for (int i = 0; i < places.length; i++) {
      items.add(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onHover: (value) {
                setState(() {
                  _isHovering[i] = value;
                });
              },
              onTap: () {
                _controller.animateToPage(i);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: mediaQuery.height / 80,
                    bottom: mediaQuery.height / 90),
                child: Text(
                  places[i],
                  style: TextStyle(
                      color: _isHovering[i] ? Colors.blueGrey : Colors.blue[100]),
                ),
              ),
            ),
            Visibility(
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                visible: _isSelected[i],
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 400),
                  opacity: _isSelected[i] ? 1 : 0,
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: mediaQuery.width / 10,
                  ),
                ))
          ],
        ),
      );
      items.add(SizedBox(
        width: 10,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    var imageSliders = getImages();

    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enlargeCenterPage: true,
                scrollPhysics: PageScrollPhysics(),
                autoPlay: true,
                aspectRatio: 18 / 8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    for(int i =0; i<imageSliders.length; i++) {
                      if(i==index) {
                        _isSelected[i] = true;
                      } else {
                        _isSelected[i] = false;
                      }
                    }
                  });
                }),
            carouselController: _controller,
          ),
          AspectRatio(
            aspectRatio: 18 / 8,
            child: Center(
              child: Text(
                places[_current],
                style: TextStyle(
                  letterSpacing: 8,
                  fontSize: mediaQuery.width / 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 17 / 8,
            child: Center(
              heightFactor: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: mediaQuery.width / 8,
                      right: mediaQuery.width / 8),
                  child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: mediaQuery.height / 50,
                          bottom: mediaQuery.height / 50,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: getRowElements(mediaQuery),
                          ),
                        ),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
