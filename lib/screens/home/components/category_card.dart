import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/Categories.dart';

import '../../../constaints.dart';
import '../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    @required this.category,
    Key key,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2), // 20
      child: SizedBox(
        width: defaultSize * 20.5, //205
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  //color: Colors.blueAccent,
                  ),
              //This is the custom Shape that why we need to use ClipPath
              ClipPath(
                clipper: CategoryCustomShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(defaultSize * 2),
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TitleText(title: category.title),
                        SizedBox(height: defaultSize),
                        Text(
                          '${category.numOfProducts}+ Products',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/spinner.gif',
                    image: category.image,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    const cornerSize = 30.0;

    final path = Path()
      ..lineTo(0, height - cornerSize)
      ..quadraticBezierTo(0, height, cornerSize, height)
      ..lineTo(width - cornerSize, height)
      ..quadraticBezierTo(width, height, width, height - cornerSize)
      ..lineTo(width, cornerSize)
      ..quadraticBezierTo(width, 0, width - cornerSize, 0)
      ..lineTo(cornerSize, cornerSize * 0.75)
      ..quadraticBezierTo(0, cornerSize, 0, cornerSize * 2)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
