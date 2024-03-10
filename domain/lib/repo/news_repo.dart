import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:either_dart/either.dart';

/// Domain layer contains abstract implementations of Repos which will be used by
/// use-cases
/// We will provide the Implementation of repo to use-cases through dependency injection
/// In order to switch between server implementation or local storage implementations
/// we can create new implementation of these repos
abstract class NewsRepo{

  ///This will be the repo abstract function which wll be called from use-cases
  Future<Either<List<NewsModel>,BaseError>> getNews();
}