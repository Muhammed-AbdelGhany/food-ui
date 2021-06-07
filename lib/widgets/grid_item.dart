import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_ui/constants/constants.dart';
import 'package:foodapp_ui/models/Item.dart';

class GridItem extends StatelessWidget {
  final index;

  const GridItem({
    this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color(demoItems[index].color!),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Hero(
                tag: demoItems[index].id!,
                child: Image.asset(
                  demoItems[index].image!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * .6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(demoItems[index].name!),
                      Text(
                        '\$${demoItems[index].price} ',
                        style: TextStyle(
                            color: kRedColor, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  IconButton(
                      icon: SvgPicture.asset('assets/icons/heart.svg'),
                      onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
