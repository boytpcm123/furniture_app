import 'package:flutter/material.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: defaultSize * 37.5, //375
            width: defaultSize * 15, //150
            color: Colors.black45,
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
