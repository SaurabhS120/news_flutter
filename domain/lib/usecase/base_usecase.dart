import 'package:domain/errors/base_error.dart';
import 'package:either_dart/either.dart';

/// The generic base class of use-case will force to have an execute function
/// which will be used to perform desired actions and fetch the data
/// We will pass request params and response type to it
abstract class BaseUseCase<REQUEST_PARAMS,RESPONSE>{

  /// This will be the single main function which will be called from view-model
  /// in order to fetch data.
  /// In order to fetch data execute function will interact with repos
  Future<Either<RESPONSE,BaseError>> execute(REQUEST_PARAMS params);
}