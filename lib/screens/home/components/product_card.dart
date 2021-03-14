import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/Product.dart';

import '../../../constaints.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5, //145
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(
                  title: product.title,
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              Text("\$${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
