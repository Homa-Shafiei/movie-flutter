import 'package:flutter/material.dart';
import 'package:movie/utils/dimension.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;

  List<String> images = [
    "https://static.namava.ir/Content/Upload/Images/f3d5490a-e980-4e27-9038-9ffdf8bc3a40.jpg?anchor=middlecenter&crop=auto&scale=both&w=1920&h=900",
    "https://static.namava.ir/Content/Upload/Images/e416ad22-9ed9-49c0-87af-4f7f814e3f2f.jpg?anchor=middlecenter&crop=auto&scale=both&w=1920&h=900",
    "https://static.namava.ir/Content/Upload/Images/2e51db96-312f-48c1-834b-bd4822857792.jpg?anchor=middlecenter&crop=auto&scale=both&w=1280&h=600",
    "https://static.namava.ir/Content/Upload/Images/218a3662-6aff-48f5-997a-657e12cdd541.jpg?anchor=middlecenter&crop=auto&scale=both&w=1280&h=600",
    "https://static.namava.ir/Content/Upload/Images/e2e10115-263e-4d92-857b-d99fa18f7fd8.jpg?anchor=middlecenter&crop=auto&scale=both&w=1280&h=600"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: fullWidth(context),
          height: fullHeight(context) / 2,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(images.length, activePage, context),
        )
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    child: Image.network(
      images[pagePosition],
      fit: BoxFit.cover,
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex, context) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.only(
        top: smallSize(context),
        left: xxSmallSize(context),
      ),
      width: xSmallSize(context),
      height: xSmallSize(context),
      decoration: BoxDecoration(
          color: currentIndex == index
              ? Theme.of(context).colorScheme.onBackground
              : Colors.grey,
          shape: BoxShape.circle),
    );
  });
}
