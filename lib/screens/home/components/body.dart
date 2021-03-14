import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/screens/home/components/categories.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/services/fetchProducts.dart';

import '../../../size_config.dart';
import 'recommand_products.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: const TitleText(
                title: 'Browse by Categories',
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(
                      categories: snapshot.data,
                    )
                  : Center(
                      child: Image.asset(
                        'assets/ripple.gif',
                      ),
                    ),
            ),
            const Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: const TitleText(title: 'Recommands For You'),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommandProducts(products: snapshot.data)
                    : Center(child: Image.asset('assets/ripple.gif'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
