import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp_ui/constants/constants.dart';
import 'package:foodapp_ui/models/Category.dart';
import 'package:foodapp_ui/models/Item.dart';
import 'package:foodapp_ui/widgets/categories_widgets.dart';
import 'package:foodapp_ui/widgets/grid_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * .5, 0),
          child: IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/user.png')),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/notification.svg'))
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        padding: EdgeInsets.all(kDefaultPadding),
        margin: EdgeInsets.fromLTRB(
            kDefaultPadding, kDefaultPadding, kDefaultPadding, kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: SvgPicture.asset('assets/icons/home.svg'),
              onTap: () {},
            ),
            GestureDetector(
              child: SvgPicture.asset('assets/icons/chat.svg'),
              onTap: () {},
            ),
            GestureDetector(
              child: SvgPicture.asset('assets/icons/buy.svg'),
              onTap: () {},
            ),
            GestureDetector(
              child: SvgPicture.asset('assets/icons/profile.svg'),
              onTap: () {},
            ),
          ],
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find the Best\nHealth for You',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    prefixIcon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: 'Find Food',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding * .4),
                      margin: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * .3),
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset('assets/icons/filter.svg'),
                    ),
                    CategoriesWidget(),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  'Popular',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  itemCount: demoItems.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) {
                    return GridItem(
                      index: i,
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
