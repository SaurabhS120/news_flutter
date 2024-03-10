import 'package:data_dummy/news_repo_impl.dart';
import 'package:domain/errors/base_error.dart';
import 'package:domain/model/news_model.dart';
import 'package:domain/repo/news_repo.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:news_flutter/base_page/base_page.dart';
import 'package:rxdart/rxdart.dart';
class HomePage extends BasePage {
  HomePageViewModel model = HomePageViewModel();
  HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends BasePageState<HomePage> {
  @override
  PreferredSizeWidget buildAppBar() {
    return AppBar(
      title: const Text('home page'),
    );
  }

  @override
  Widget buildBody() {
    return HomePageView(model: widget.model,);
  }
}
class HomePageView extends StatelessWidget {
  final HomePageViewModel model;
  const HomePageView({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
   return StreamBuilder<Either<List<NewsModel>,BaseError>>(
     stream: model.news_list_stream,
     builder: (context, newsList) {
       return ListView.separated(
         itemBuilder: (BuildContext context,int index){
           return Padding(
             padding: const EdgeInsets.all(16.0),
             child: Text(newsList.data?.left[index].title??''),
           );
         },
         separatorBuilder: (BuildContext context,int index){
           return Divider();
         },
         itemCount: newsList.data?.left.length??0,
       );
     }
   );
  }
}
class HomePageViewModel{
  NewsRepo newsRepo = NewsRepoDummyImpl();
  HomePageViewModel(){
    getNewsList();
  }
  PublishSubject<Either<List<NewsModel>,BaseError>> _news_list_subject = PublishSubject<Either<List<NewsModel>,BaseError>>();
  Stream<Either<List<NewsModel>,BaseError>> get news_list_stream => _news_list_subject.stream;
  void getNewsList()async{
    _news_list_subject.add(await newsRepo.getNews());
  }
}