import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constaints.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screens/details/components/body.dart';
import 'package:furniture_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    @required this.product,
    Key key,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/arrow-long-left.svg',
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/bag.svg'),
          onPressed: () {},
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
