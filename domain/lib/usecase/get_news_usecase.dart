import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:domain/repo/news_repo.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:either_dart/either.dart';

/// Use-case is mediator between presentation layer view model and domain layer repos
/// It follows single responsibility principle will only have execute function to fetch desired data from repos
/// Use-case can provide better testability
class GetNewsUseCase implements BaseUseCase<GetNewsUseCaseParams,List<NewsModel>>{

  final NewsRepo repo;
  GetNewsUseCase(this.repo);

  /// Execute function of use-case will fetch data from repo and provide user
  /// In some cases it can call multiple repos and their functions in order to perform some complex tasks
  /// eg. In order to maintain offline availability of news we can add news into data-base as we fetch
  /// So every time we are unable to fetch news from API, we can fetch from database in case of network disruptions
  /// This functions will Either return data or error
  @override
  Future<Either<List<NewsModel>, BaseError>> execute(GetNewsUseCaseParams params) {
    return repo.getNews();
  }

}

/// This params class will allow us to send parameters to use-case which will be necessary to perform its operations
class GetNewsUseCaseParams{

}