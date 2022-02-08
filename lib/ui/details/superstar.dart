import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie/model/movie_model.dart';
import 'package:movie/model/superstar_model.dart';
import 'package:movie/utils/constants/string_constants.dart';
import 'package:movie/utils/dimension.dart';

class Superstar extends StatelessWidget {
  const Superstar({required this.superstar, Key? key}) : super(key: key);

  final SuperStarModel superstar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: fullHeight(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(superstar.image),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: fullHeight(context),
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              left: smallSize(context),
              right: smallSize(context),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: smallSize(context),
                      top: xxLargeSize(context),
                    ),
                    child: buildCircleCover(context, superstar),
                  ),
                  SizedBox(
                    height: smallSize(context),
                  ),
                  Text(
                    superstar.description,
                    maxLines: 4,
                  ),
                  SizedBox(
                    height: smallSize(context),
                  ),
                  superstar.description.length > 200
                      ? GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                StringConstants.more,
                                style: TextStyle(
                                  fontSize: mediumSize(context),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            ],
                          ),
                          onTap: () {
                            showModal(context);
                          },
                        )
                      : SizedBox(),
                  SizedBox(
                    height: smallSize(context),
                  ),
                  GridView.custom(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => buildGridView(
                              context,
                              movies[index],
                            ),
                        childCount: movies.length),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.keyboard_arrow_down),
                title: Text(
                  StringConstants.details,
                  style: TextStyle(
                    fontSize: mediumSize(context),
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),
              Padding(
                padding: EdgeInsets.all(mediumSize(context)),
                child: Text(
                  superstar.description,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildCircleCover(BuildContext context, SuperStarModel superstar) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: xxLargeSize(context),
          height: xxLargeSize(context),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(superstar.image),
            ),
          ),
        ),
        SizedBox(
          height: smallSize(context),
        ),
        Text(
          superstar.name,
          style: TextStyle(
            fontSize: mediumSize(context),
          ),
        ),
      ],
    );
  }

  Widget buildGridView(BuildContext context, MovieModel movie) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(xxSmallSize(context)),
              child: Image.asset(
                movie.image,
                height: xxxLargeSize(context),
              ),
            ),
          ),
          Text(
            movie.title,
          ),
          SizedBox(
            height: smallSize(context),
          ),
        ],
      ),
    );
  }
}
