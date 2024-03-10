/// This is the model class from domain layer which will contain only plain data
/// We will use transformation methods to convert these models to data layer
/// entities and vice versa
/// This models will be used in presentation layer
class NewsModel{
  final String title;

  NewsModel({required this.title});
}