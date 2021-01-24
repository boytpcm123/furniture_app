import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2), //20
            child: const TitleText(
              title: 'Browse by Categories',
            ),
          )
        ],
      ),
    );
  }
}
