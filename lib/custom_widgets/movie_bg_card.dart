import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget{
  String imgPath;
  double mWidth;
  double mHeight;
  bool isNetflixLogo;
  bool isRecentlyAdded;
  bool isTopTen;
  MovieCardWidget({required this.imgPath, this.mWidth=100, this.mHeight=200, this.isNetflixLogo=false, this.isRecentlyAdded=false, this.isTopTen=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: mWidth,
      child: Stack(
        children: [
          Container(
            width: mWidth,
            height: mHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage(imgPath)
              )
            ),
          ),
          isNetflixLogo ? Image.asset('assets/images/logo_netflix.png', width: 40, height: 40,) : Container(),
          isRecentlyAdded ? Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(4),
              width: 115,
              child: Text('Recently added',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:12,color: Colors.white, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5))
              ),
            ),
          ) : Container(),
          isTopTen ? Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(2),
              child: Text('TOP\n10',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:12,color: Colors.white, fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(7))
              ),
            ),
          ) : Container(),
        ],
      ),
    );
  }

}