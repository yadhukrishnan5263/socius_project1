import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/Appbar.dart';
import '../widgets/Button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Button(
                title: 'hello',
                height: 50,
                width: 100,
              ) //reusable button
            ],
          ),
        ));
  }
}
