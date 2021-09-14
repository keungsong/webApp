import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:web_app/services/firebase_services.dart';

class SlideImage extends StatefulWidget {
  @override
  _SlideImageState createState() => _SlideImageState();
}

class _SlideImageState extends State<SlideImage> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var extraLargeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;
  //  FirebaseServices _services = FirebaseServices();
    return Container(
      margin: EdgeInsets.only(left:smallScreenGrid ? 0.0 : 10,right:smallScreenGrid ? 0.0 : 10),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: extraSmallScreenGrid ? 3.5 : largeScreenGrid ? 2.1 : smallScreenGrid ? 2.3 : tabScreenGrid ? 1.8: 1.5,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 0.0,
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(
                    milliseconds: 1500,
                  ),
                  dotSize: 8.0,
                  dotIncreaseSize: 1.4,
                  dotIncreasedColor: Colors.indigo[600],
                  dotColor: Colors.white,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  dotHorizontalPadding: 40.0,
                  images: [
                    NetworkImage(
                        'https://cloudinary.hbs.edu/hbsit/image/upload/s--EmT0lNtW--/f_auto,c_fill,h_375,w_750,/v20200101/6978C1C20B650473DD135E5352D37D55.jpg'),
                    NetworkImage(
                        'https://www.northeastern.edu/graduate/blog/wp-content/uploads/2019/05/BusinessAnalyst_NortheasternGraduateBlog_HeroImage-1.jpeg')
                  ]),
             /* Container(
                  margin: EdgeInsets.only(left: smallScreenGrid ?  250 : 10, top: extraSmallScreenGrid ? 60 : largeScreenGrid ? 50 : smallScreenGrid ? 40 : tabScreenGrid ? 80: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Services',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: extraSmallScreenGrid ? 80 : largeScreenGrid ? 70 : smallScreenGrid ? 60 : tabScreenGrid ? 35: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      Text('Help you all of here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:extraSmallScreenGrid ? 80 : largeScreenGrid ? 70 : smallScreenGrid ? 60 : tabScreenGrid ? 35: 35,
                              fontWeight: FontWeight.bold)),
                     Container(
                          margin: EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              padding: EdgeInsets.all(smallScreenGrid ? 18: 5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: smallScreenGrid ? 40:18, right: smallScreenGrid ? 40:18, top: 2, bottom: 2),
                              child: Text('Post Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                            ),
                          ))
                    ],
                  ),
                  )*/
            ],
          )
        ],
      ),
    );
  }
}
