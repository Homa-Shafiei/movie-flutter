import 'package:movie/utils/constants/asset_constants.dart';

class MovieModel {
  final String title;
  final String image;

  MovieModel({required this.title, this.image = Images.khatoon});
}

List<MovieModel> movies = [
  MovieModel(title: "خاتون"),
  MovieModel(title: "خسوف"),
  MovieModel(title: "قهرمان"),
  MovieModel(title: "حرفه ای"),
  MovieModel(title: "مترجم"),
  MovieModel(title: "قورباغه"),
  MovieModel(title: "بازی مرکب"),
  MovieModel(title: "روز بلوا")
];

List<MovieModel> verticalMovies = [
  MovieModel(title: "قورباغه", image: Images.frog),
  MovieModel(title: "خاتون", image: Images.frog),
  MovieModel(title: "خسوف", image: Images.frog),
  MovieModel(title: "قهرمان", image: Images.frog),
  MovieModel(title: "حرفه ای", image: Images.frog),
  MovieModel(title: "مترجم", image: Images.frog),
  MovieModel(title: "بازی مرکب", image: Images.frog),
  MovieModel(title: "روز بلوا", image: Images.frog)
];
