import 'package:flutter/material.dart';
import 'package:movie/model/movie_model.dart';
import 'package:movie/model/superstar_model.dart';
import 'package:movie/ui/details/superstar.dart';
import 'package:movie/ui/slider/image_slider.dart';
import 'package:movie/utils/constants/string_constants.dart';
import 'package:movie/utils/dimension.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSlider(),
          Padding(
            padding: EdgeInsets.all(smallSize(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHorizontalCover(context, StringConstants.special),
                buildVerticalCover(context, StringConstants.continues),
                buildHorizontalCover(context, StringConstants.myList),
                buildCircleCover(context, StringConstants.superStars),
                buildHorizontalCover(context, StringConstants.iran),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHorizontalCover(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: mediumSize(context),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  StringConstants.more,
                  style: TextStyle(
                    fontSize: mediumSize(context),
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ],
        ),
        SizedBox(
          height: smallSize(context),
        ),
        Container(
          height: xxxLargeSize(context),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Padding(
                padding: EdgeInsets.all(xxSmallSize(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(xxSmallSize(context)),
                      child: Image.asset(
                        movies[index].image,
                        height: xxLargeSize(context),
                      ),
                    ),
                    SizedBox(
                      height: smallSize(context),
                    ),
                    Text(movies[index].title),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildVerticalCover(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: mediumSize(context),
          ),
        ),
        SizedBox(
          height: smallSize(context),
        ),
        Container(
          height: xxLargeSize(context),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: verticalMovies.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Padding(
                padding: EdgeInsets.all(xxSmallSize(context)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(xxSmallSize(context)),
                      child: Image.asset(
                        verticalMovies[index].image,
                        height: xxLargeSize(context),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: xxSmallSize(context),
                        right: xxSmallSize(context),
                        bottom: largeSize(context),
                      ),
                      alignment: Alignment.bottomRight,
                      child: Text(verticalMovies[index].title),
                    ),
                    Container(
                      width: xxLargeSize(context),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(
                        left: xxSmallSize(context),
                        right: xxSmallSize(context),
                        bottom: mediumSize(context),
                      ),
                      child: const LinearProgressIndicator(
                        backgroundColor: Colors.blue,
                        value: 0.7,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: smallSize(context),
        ),
      ],
    );
  }

  Widget buildCircleCover(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: mediumSize(context),
          ),
        ),
        SizedBox(
          height: smallSize(context),
        ),
        Container(
          height: xxxLargeSize(context),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: superstars.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Padding(
                padding: EdgeInsets.all(xxSmallSize(context)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Directionality(
                          textDirection: TextDirection.rtl,
                          child: Scaffold(
                            body: Superstar(superstar: superstars[index]),
                          ),
                        );
                      }),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: xxLargeSize(context),
                        height: xxLargeSize(context),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(superstars[index].image),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: smallSize(context),
                      ),
                      Text(superstars[index].name),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
