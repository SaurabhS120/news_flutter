import 'package:domain/errors/base_error.dart';
import 'package:either_dart/either.dart';

abstract class BaseUseCase<REQUEST_PARAMS,RESPONSE>{
  Future<Either<RESPONSE,BaseError>> execute(REQUEST_PARAMS params);
}