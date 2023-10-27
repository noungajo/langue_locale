import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/size.dart';
import '../../utils/app_bar.dart';
import 'widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("projet".tr,context),
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(bodyPadding),
          child: Column(children: []),
        ),
      ),
    );
  }
}
