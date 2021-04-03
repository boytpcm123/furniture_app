import 'package:flutter/material.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../size_config.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'product_info.dart';

class Body extends StatelessWidget {
  const Body({
    @required this.product,
    Key key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: ProductImage(product: product),
            )
          ],
        ),
      ),
    );
  }
}
