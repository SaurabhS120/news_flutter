import 'package:flutter/material.dart';
import 'package:news_flutter/base_page/base_page.dart';
class HomePage extends BasePage {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends BasePageState {
  @override
  PreferredSizeWidget buildAppBar() {
    return AppBar(
      title: const Text('home page'),
    );
  }

  @override
  Widget buildBody() {
    return const Center(
      child: Text("home page"),
    );
  }
}
