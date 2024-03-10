import 'package:domain/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:news_flutter/base_page/base_page.dart';
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
   return ListView.separated(
     itemBuilder: (BuildContext context,int index){
       return Padding(
         padding: const EdgeInsets.all(16.0),
         child: Text(model.newsList[index].title),
       );
     },
     separatorBuilder: (BuildContext context,int index){
       return Divider();
     },
     itemCount: model.newsList.length,
   );
  }
}
class HomePageViewModel{
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
}