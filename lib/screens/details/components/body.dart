import 'package:flutter/material.dart';
import 'package:furniture_app/models/Product.dart';

import 'product_info.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ProductInfo(product: product)],
      ),
    );
  }
}
