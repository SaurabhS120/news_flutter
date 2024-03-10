import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:domain/repo/news_repo.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:either_dart/either.dart';

class GetNewsUseCase implements BaseUseCase<GetNewsUseCaseParams,List<NewsModel>>{

  final NewsRepo repo;
  GetNewsUseCase(this.repo);

  @override
  Future<Either<List<NewsModel>, BaseError>> execute(GetNewsUseCaseParams params) {
    return repo.getNews();
  }

}

class GetNewsUseCaseParams{

}