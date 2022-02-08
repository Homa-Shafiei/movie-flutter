import 'package:movie/utils/constants/asset_constants.dart';

class MovieModel {
  final String title;
  final String image;

  MovieModel({required this.title, this.image = Images.khatoon});
}

List<MovieModel> movies = [
  MovieModel(title: "خاتون", image: Images.khatoon),
  MovieModel(title: "خسوف", image: Images.khosoof),
  MovieModel(title: "قهرمان", image: Images.hero),
  MovieModel(title: "حرفه ای",image: Images.prof),
  MovieModel(title: "روز بلوا",image: Images.day),
  MovieModel(title: "مترجم", image: Images.translate),
  MovieModel(title: "قورباغه",image: Images.frog1),
  MovieModel(title: "بازی مرکب",image: Images.game),
];

List<MovieModel> verticalMovies = [
  MovieModel(title: "قورباغه", image: Images.frog),
  MovieModel(title: "ماتریکس", image: Images.matrix),
  MovieModel(title: "احضار", image: Images.conjuring),
  MovieModel(title: "مکس دیوانه", image: Images.max),
];
