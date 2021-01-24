import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    @required this.title,
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
