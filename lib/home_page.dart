import 'package:custom_widget_302/custom_widgets/movie_bg_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> movies = [
    {
      'img_bg' : 'assets/images/bg_movie_leo.png',
      'is_netflix' : true,
      'is_recently_added' : false,
    },
    {
      'img_bg' : 'assets/images/bg_movie_maharaja.png',
      'is_netflix' : true,
      'is_recently_added' : false,
    },
    {
      'img_bg' : 'assets/images/bg_movie_kota_factory.png',
      'is_netflix' : true,
      'is_recently_added' : true,
    },
    {
      'img_bg' : 'assets/images/bg_movie_370.png',
      'is_netflix' : false,
      'is_recently_added' : false,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
            itemBuilder: (_, index){
          return MovieCardWidget(
            mWidth: 150,
              imgPath: movies[index]['img_bg'],
            isNetflixLogo: movies[index]['is_netflix'],
            isRecentlyAdded: movies[index]['is_recently_added'],
          );
        }),
      ),
    );
  }
}
