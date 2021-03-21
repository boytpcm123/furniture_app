import 'package:flutter/material.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../constaints.dart';
import '../../../size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    @required this.product,
    Key key,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    final lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      height: defaultSize * 37.5, //375
      width: defaultSize * 15, //150
      //color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.category.toUpperCase(),
            style: lightTextStyle,
          ),
          SizedBox(
            height: defaultSize,
          ),
          Text(
            product.title,
            style: TextStyle(
              fontSize: defaultSize * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.5,
            ), //24
          ),
          SizedBox(height: defaultSize * 2),
          Text('From', style: lightTextStyle),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontSize: defaultSize * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          SizedBox(height: defaultSize * 2),
          Text('Available Colors', style: lightTextStyle)
        ],
      ),
    );
  }
}
