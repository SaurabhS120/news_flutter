import 'package:flutter/material.dart';

abstract class BasePage<T extends BasePageState> extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState();
}

abstract class BasePageState extends State<BasePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  PreferredSizeWidget buildAppBar();

  Widget buildBody();
}