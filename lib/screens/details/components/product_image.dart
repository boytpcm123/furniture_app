import 'package:flutter/material.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../size_config.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    @required this.product,
    Key key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Hero(
        tag: product.id,
        child: Image.network(
          product.image,
          fit: BoxFit.cover,
          height: defaultSize * 37.8,
          width: defaultSize * 36.4,
        ),
      ),
    );
  }
}
