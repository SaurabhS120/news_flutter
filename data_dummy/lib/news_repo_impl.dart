import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:domain/repo/news_repo.dart';
import 'package:either_dart/either.dart';
class NewsRepoDummyImpl implements NewsRepo{
  @override
  Future<Either<List<NewsModel>,BaseError>> getNews() {
    final List<NewsModel> newsList = [
      NewsModel(title: 'Nikki Halley raises \$12 million in February, bags first Senate endorsement, but rules out third-party run'),
      NewsModel(title: 'Drone crash damages an apartment building in St. Petersburg, Russia state media says'),
      NewsModel(title: 'Despite hectic discussions, WTO MC13 ends with no deals on fisheries, agriculture'),
      NewsModel(title: 'Biden approves military air drops of aid into Gaza after Israeli firing left more than 100 dead'),
      NewsModel(title: 'Top news of the day: Nine injured in blast at Bengaluru’s Rameshwaram Cafe; Defence Ministry seals procurement deals worth ₹39,125 crore, and more'),
      NewsModel(title: 'Thailand replaces its Ambassador to WTO following strong protest by India on her remarks'),
      NewsModel(title: 'Jamnagar airport gets international status for Anant Ambani’s pre-wedding bash'),
      NewsModel(title: 'An encounter with unique marine wonders in Visakhapatnam'),
    ];
    return Future.delayed(Duration(seconds: 2),()=>Left(newsList));
  }
}