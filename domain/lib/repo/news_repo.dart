import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:either_dart/either.dart';

abstract class NewsRepo{
  Future<Either<List<NewsModel>,BaseError>> getNews();
}