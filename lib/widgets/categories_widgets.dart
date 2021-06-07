import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_ui/constants/constants.dart';
import 'package:foodapp_ui/models/Category.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 35,
        child: ListView.builder(
            itemCount: demoCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * .6),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * .3),
                child: Row(children: [
                  SvgPicture.asset(demoCategories[i].icon!),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    demoCategories[i].name!,
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ]),
              );
            }),
      ),
    );
  }
}
